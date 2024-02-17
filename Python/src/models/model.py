from ..config import POSTGRES_URI
from sqlalchemy import Column, Integer, String, ForeignKey, create_engine
from sqlalchemy.orm import relationship, declarative_base, sessionmaker

Base = declarative_base()
engine = create_engine(POSTGRES_URI, pool_size=64, max_overflow=0, pool_recycle=1800)
PostgresSession = sessionmaker(bind=engine)
class Role(Base):
    __tablename__ = "roles"

    id = Column(Integer, primary_key=True)
    name = Column(String(50), nullable=False, unique=True)
    description = Column(String(255))
    users = relationship('User', back_populates='role')

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True)
    username = Column(String(100), nullable=False, unique=True)
    password = Column(String(255), nullable=False)
    email = Column(String(100), nullable=False, unique=True)
    name = Column(String(100), nullable=False)
    role_id = Column(Integer, ForeignKey('roles.id'))
    phone_number = Column(String(100), nullable=False)
    address = Column(String(100), nullable=False)

    role = relationship('Role', back_populates='users')
    orders = relationship('Order', back_populates='user')

class Order(Base):
    __tablename__ = "orders"

    id = Column(Integer, primary_key=True)
    user_id = Column(Integer, ForeignKey('users.id'), unique=True, nullable=False)
    status = Column(String(100), nullable=False)
    create_at = Column(String(100), nullable=False)

    user = relationship('User', back_populates='orders')

from flask import Flask
from flask_cors import CORS
from flask_restful import Api

from .route.web import Login, User, Category, Book, Transaction, Recharge, Point, sign_up
from .models.model import Order, Role, User, Base, engine


def create_app():
    app = Flask(__name__)
    api = Api(app)
    CORS(app, supports_credentials=True)
    api.add_resource(sign_up, "/api/sign_up")
    api.add_resource(Login, "/api/login")

    api.add_resource(Category, "/api/allcategories")
    api.add_resource(Book, "/api/books")
    # api.add_resource(User, "/api/get_all_member")
    api.add_resource(Transaction, "/api/transactions")
    api.add_resource(Recharge, "/api/recharge")
    api.add_resource(Point, "/api/update_point")
    Base.metadata.create_all(bind=engine)
    return app

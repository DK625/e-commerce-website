from flask import Flask
from flask_cors import CORS
from flask_restful import Api

from .resources import Login, SignUp, Token
from .models.model import Base, engine


def create_app():
    app = Flask(__name__)
    api = Api(app)
    CORS(app, supports_credentials=True)
    api.add_resource(SignUp, "/api/sign_up")
    api.add_resource(Login, "/api/login")
    api.add_resource(Token, "/api/refresh_token")

    # api.add_resource(Category, "/api/allcategories")
    # api.add_resource(Book, "/api/books")
    # # api.add_resource(User, "/api/get_all_member")
    # api.add_resource(Transaction, "/api/transactions")
    # api.add_resource(Recharge, "/api/recharge")
    # api.add_resource(Point, "/api/update_point")
    Base.metadata.create_all(bind=engine)
    return app

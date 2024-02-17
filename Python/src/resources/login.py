from flask_restful import Resource
from flask import request
from ..models.model import PostgresSession
from ..services.login import LoginModel, LoginService


class Login(Resource):
    def post(self):
        payload = request.get_json()
        session = PostgresSession()
        login_repo = LoginModel(session)
        login_servie = LoginService(login_repo, payload)
        result = login_servie.handle_login()
        return result


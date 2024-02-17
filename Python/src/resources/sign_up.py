from flask_restful import Resource
from flask import request
from ..models.model import PostgresSession
from ..services.sign_up import SignUpModel, SignUpService


class SignUp(Resource):
    def post(self):
        payload = request.get_json()
        session = PostgresSession()
        sign_up_repo = SignUpModel(session)
        sign_up_servie = SignUpService(sign_up_repo, payload)
        result = sign_up_servie.handle_sign_up()
        return result


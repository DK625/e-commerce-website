from flask_restful import Resource
from ..services.token import TokenService
from ..services import BaseModel
from flask import request
from ..models.model import PostgresSession

class Token(Resource):
    def get(self):
        refresh_token = request.headers.get('Refresh-Token')
        session = PostgresSession()
        base_repo = BaseModel(session)
        token_service = TokenService(base_repo, refresh_token)
        result = token_service.handle_refresh_token()
        return result


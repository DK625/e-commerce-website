from marshmallow import Schema, fields, ValidationError
from ..utils import generate_jwt_tokens
from .base import BaseModel


class LoginPayloadSchema(Schema):
    username = fields.Str(required=True)
    password = fields.Str(required=True, validate=lambda p: len(p) >= 8,
                          error_messages={"validate": "Password must be at least 8 characters long."})


class LoginModel(BaseModel):
    def __init__(self, session):
        super().__init__(session)


class LoginService:
    def __init__(self, repo, payload):
        self._repo = repo
        self._payload = payload

    def validate_login_payload(self):
        schema = LoginPayloadSchema()
        try:
            return schema.load(self._payload)
        except ValidationError as e:
            return {'error': e.messages}, 400

    def handle_login(self):
        password = self._payload.get('password')
        user = self._repo.check_exit_user_login(self._payload.get('username'), password)

        if user:
            tokens = generate_jwt_tokens(user)
            return {
                'username': user.username,
                'access_token': tokens['access_token'],
                'refresh_token': tokens['refresh_token'],
                'user_id': user.id,
                'role': user.role.name
            }
        else:
            return {'error': 'Invalid username or password'}, 401

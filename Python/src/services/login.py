from marshmallow import Schema, fields, ValidationError
from werkzeug.security import generate_password_hash
from ..utils import generate_jwt_token
from .base import BaseModel


class LoginPayloadSchema(Schema):
    username = fields.Str(required=True)
    password = fields.Str(required=True, validate=lambda p: len(p) >= 8, error_messages={"validate": "Password must be at least 8 characters long."})

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
        user = self._repo.check_exit_user(self._payload.get('username'), password)

        if user:
            return {
                'message': 'Login successful',
                'token': generate_jwt_token(user),
                'user_id': user.id,
                'role': user.role.name
            }
        else:
            return {'error': 'Invalid username or password'}, 401


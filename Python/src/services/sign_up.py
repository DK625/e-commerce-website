from ..models.model import User
from werkzeug.security import generate_password_hash
from sqlalchemy.exc import IntegrityError
from marshmallow import Schema, fields, ValidationError, post_load
from ..utils import generate_jwt_tokens
from .base import BaseModel


class SignUPPayloadSchema(Schema):
    email = fields.Email(required=True)
    password = fields.Str(required=True, validate=lambda p: len(p) >= 8,
                          error_messages={"validate": "Password must be at least 8 characters long."})
    confirm_password = fields.Str(required=True)
    username = fields.Str(required=True)
    name = fields.Str(required=True)
    role_id = fields.Int(required=True)
    phone_number = fields.Str(required=True)
    address = fields.Str(required=True)

    @post_load
    def check_passwords_match(self, data, **kwargs):
        if data['password'] != data['confirm_password']:
            raise ValidationError('Passwords do not match', field_names=['confirm_password'])
        return data


class SignUpModel(BaseModel):
    def __init__(self, session):
        super().__init__(session)
        self._session = session

    def create_user(self, email, password, username, name, role_id, phone_number, address):
        hashed_password = generate_password_hash(password)
        user = User(email=email, password=hashed_password, username=username, name=name, role_id=role_id,
                    phone_number=phone_number, address=address)
        self._session.add(user)
        try:
            self._session.commit()
            return user
        except IntegrityError as e:
            self._session.rollback()
            print(f"IntegrityError: {e}")
            # or log the error using your preferred logging mechanism
            # logger.error(f"IntegrityError: {e}")
            return None


class SignUpService:
    def __init__(self, repo, payload):
        self._repo = repo
        self._payload = payload

    def validate_sign_up_payload(self):
        schema = SignUPPayloadSchema()
        try:
            return schema.load(self._payload)
        except ValidationError as e:
            return {'error': e.messages}

    def handle_sign_up(self):
        validated_payload = self.validate_sign_up_payload()

        if 'error' in validated_payload:
            return validated_payload, 400

        email = self._payload.get('email')
        password = self._payload.get('password')
        username = self._payload.get('username')
        name = self._payload.get('name')
        role_id = self._payload.get('role_id')
        phone_number = self._payload.get('phone_number')
        address = self._payload.get('address')

        existing_user = self._repo.check_exit_user_sign_up(username)

        if existing_user:
            return {'error': 'User already exists'}, 409

        new_user = self._repo.create_user(email, password, username, name, role_id, phone_number, address)

        if new_user:
            tokens = generate_jwt_tokens(new_user)

            return {
                'message': 'Sign up successful',
                'access_token': tokens['access_token'],
                'refresh_token': tokens['refresh_token'],
                'user_id': new_user.id,
                'role': new_user.role.name
            }
        else:
            return {'error': 'Failed to create user'}, 500

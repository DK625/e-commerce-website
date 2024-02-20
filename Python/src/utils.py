from datetime import datetime, timedelta
import jwt
from .config import SECRET_KEY


def generate_jwt_tokens(user):
    expiration_refresh = datetime.utcnow() + timedelta(days=1)     # Thời gian hết hạn của refresh token

    # Tạo refresh token
    payload_refresh = {
        'exp': expiration_refresh,
    }
    refresh_token = jwt.encode(payload_refresh, SECRET_KEY, algorithm='HS256')

    return {
        'access_token': generate_access_token(user),
        'refresh_token': refresh_token
    }

def generate_access_token(user):
    expiration_access = datetime.utcnow() + timedelta(minutes=15)

    # Tạo access token
    payload_access = {
        'user_id': user.id,
        'role_id': user.role.id,
        'email': user.email,
        'exp': expiration_access,
    }
    access_token = jwt.encode(payload_access, SECRET_KEY, algorithm='HS256')
    return access_token

def decode_token(token):
    try:
        # Decode the token and get the payload
        payload = jwt.decode(token, SECRET_KEY, algorithms=['HS256'])
        return payload
    except jwt.ExpiredSignatureError:
        return {'error': 'Expired token'}, 401
    except jwt.InvalidTokenError:
        return {'error': 'Invalid token'}, 401

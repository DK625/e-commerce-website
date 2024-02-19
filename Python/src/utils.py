from datetime import datetime, timedelta
import jwt
from .config import SECRET_KEY


def generate_jwt_tokens(user):
    expiration_access = datetime.utcnow() + timedelta(minutes=15)  # Thời gian hết hạn của access token
    expiration_refresh = datetime.utcnow() + timedelta(days=1)     # Thời gian hết hạn của refresh token

    # Tạo access token
    payload_access = {
        'user_id': user.id,
        'role_id': user.role.id,
        'email': user.email,
        'exp': expiration_access,
    }
    access_token = jwt.encode(payload_access, SECRET_KEY, algorithm='HS256')

    # Tạo refresh token
    payload_refresh = {
        'user_id': user.id,
        'exp': expiration_refresh,
    }
    refresh_token = jwt.encode(payload_refresh, SECRET_KEY, algorithm='HS256')

    return {
        'access_token': access_token,
        'refresh_token': refresh_token
    }


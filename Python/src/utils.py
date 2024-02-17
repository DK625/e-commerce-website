from datetime import datetime, timedelta
import jwt
from .config import SECRET_KEY

def generate_jwt_token(user):
    expiration = datetime.utcnow() + timedelta(days=1)
    payload = {
        'user_id': user.id,
        'role_id': user.role.id,
        'email': user.email,
        'exp': expiration,
    }

    token = jwt.encode(payload, SECRET_KEY, algorithm='HS256')
    return token
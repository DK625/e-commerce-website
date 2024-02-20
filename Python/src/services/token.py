from ..utils import decode_token, generate_access_token

class TokenService:
    def __init__(self, repo, refresh_token):
        self._refresh_token = refresh_token
        self._repo = repo
    def handle_refresh_token(self):
        refresh_token = self._refresh_token
        if not refresh_token:
            return {'error': 'Refresh token not provided'}, 401
        decoded_token = decode_token(refresh_token)
        if 'error' in decoded_token:
            return decoded_token

        username = decoded_token.get('username')
        user = self._repo.check_exit_user_sign_up(username)
        if not user:
            return {'error': 'User not found'}, 401
        access_token = generate_access_token(user)
        return {'access_token': access_token}, 200


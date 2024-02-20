from ..models.model import User
from werkzeug.security import check_password_hash


class BaseModel:
    def __init__(self, session):
        self._session = session

    def check_exit_user_login(self, username, password):
        user = self._session.query(User).filter_by(username=username).first()
        if user:
            if check_password_hash(user.password, password):
                return user
            else:
                print("Password does not match.")
                return None
        else:
            print(f"No user found with username: {username}")
            return None

    def check_exit_user_sign_up(self, username):
        user = self._session.query(User).filter_by(username=username).first()
        if user:
            return user
        return None

import os
from dotenv import load_dotenv

load_dotenv()

POSTGRES_URI = os.getenv('POSTGRES_URI', None)
SECRET_KEY = os.getenv('SECRET_KEY', None)


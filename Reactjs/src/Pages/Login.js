import React, { useState } from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEye, faEyeSlash } from '@fortawesome/free-solid-svg-icons';
import { faFacebook, faTwitter } from '@fortawesome/free-brands-svg-icons';
import google_logo from '../assets/img/google-logo.svg';
import 'react-slideshow-image/dist/styles.css';
import '../Components/Login/Login.css';
import Cookies from 'js-cookie';

// Component chính
function Login() {
    return (
        <div className="login_container">
            <div id="loginform">
                <FormHeader title="Login" />
                <LoginForm />
                <OtherMethods />
            </div>
        </div>
    );
}

// Component Header của Form
const FormHeader = (props) => <h2 id="headerTitle">{props.title}</h2>;

// Component Form chứa input và nút login
const LoginForm = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    const handleLogin = async () => {
        try {
            const response = await fetch('/api/login', {
                method: 'POST',
                body: JSON.stringify({ email, password }),
                headers: {
                    'Content-Type': 'application/json',
                },
            });

            if (response.ok) {
                const { accessToken } = await response.json();

                // Set the access token as an HTTP-only cookie using js-cookie
                Cookies.set('access_token', accessToken, {
                    path: '/',
                    secure: true, // Set to true if using HTTPS
                    sameSite: 'strict', // Adjust based on your needs
                });
            }
        } catch (error) {
            console.error('Error during login:', error);
        }
    };

    return (
        <div>
            <FormInput
                description="Username"
                placeholder="Enter your username"
                type="text"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
            />
            <FormInputPassword
                description="Password"
                placeholder="Enter your password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
            />
            <FormButton title="Log in" onClick={handleLogin} />
            <span className="forgot_password">Forgot your password?</span>
        </div>
    );
};

// Component Input thông thường
const FormInput = (props) => (
    <div className="rows">
        <label>{props.description}</label>
        <input type={props.type} placeholder={props.placeholder} value={props.value} onChange={props.onChange} />
    </div>
);

// Component Input cho mật khẩu với hiển thị ẩn password
const FormInputPassword = (props) => {
    const [showPassword, setShowPassword] = useState(false);

    const handleShowHidePassword = () => {
        setShowPassword(!showPassword);
    };

    return (
        <div className="rows">
            <label>{props.description}</label>
            <input type={showPassword ? 'text' : 'password'} placeholder={props.placeholder} value={props.value} onChange={props.onChange} />
            <span onClick={handleShowHidePassword}>
                <FontAwesomeIcon icon={showPassword ? faEye : faEyeSlash} />
            </span>
        </div>
    );
};

// Component Nút đăng nhập
const FormButton = (props) => (
    <div id="button" className="rows">
        <button onClick={props.onClick}>{props.title}</button>
    </div>
);

// Component phương thức đăng nhập khác
const OtherMethods = () => (
    <div id="alternativeLogin">
        <label>Or sign in with:</label>
        <div id="iconGroup">
            <Facebook />
            <Twitter />
            <Google />
        </div>
    </div>
);

// Các Component Icon của phương thức đăng nhập khác
const Facebook = () => <FontAwesomeIcon icon={faFacebook} size="2x" style={{ marginRight: '10px', color: '#0866FF' }} />;
const Twitter = () => <FontAwesomeIcon icon={faTwitter} size="2x" style={{ marginRight: '10px', color: '#2593E9' }} />;
const Google = () => <img className="google_image" src={google_logo} alt="Google" />;

export default Login;

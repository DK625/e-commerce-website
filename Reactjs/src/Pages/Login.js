import React, { useState } from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEye, faEyeSlash } from '@fortawesome/free-solid-svg-icons';
import { faFacebook, faTwitter } from '@fortawesome/free-brands-svg-icons';
import google_logo from '../assets/img/google-logo.svg';
import 'react-slideshow-image/dist/styles.css';
import '../Components/Login/Login.css';
import AuthService from '../Services/AuthService'
import { useHistory } from 'react-router-dom';

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
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState(null);
    const history = useHistory();

    const handleLogin = async () => {
        const loginResult = await AuthService.login(username, password);

        if (loginResult.success) {
            history.push('/');
        } else {
            setError(loginResult.error);
        }
    };

    return (
        <div>
            <FormInput
                description="Username"
                placeholder="Enter your username"
                type="text"
                value={username}
                onChange={(e) => setUsername(e.target.value)}
            />
            <FormInputPassword
                description="Password"
                placeholder="Enter your password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
            />
            <FormButton title="Log in" onClick={handleLogin} />
            {error && <div className="error-message">{error}</div>}
            <span className="forgot-password">Forgot your password?</span>
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

import React, { useState } from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEye, faEyeSlash } from '@fortawesome/free-solid-svg-icons';
import { faFacebook, faTwitter, faGoogle } from '@fortawesome/free-brands-svg-icons';
import google_logo from '../assets/img/google-logo.svg'
import 'react-slideshow-image/dist/styles.css';
import '../Components/Login/Login.css';

const FormHeader = (props) => <h2 id="headerTitle">{props.title}</h2>;

const Form = (props) => {

    return (
        <div>
            <FormInput description="Username" placeholder="Enter your username" type="text" />
            <FormInputPassword
                description="Password"
                placeholder="Enter your password"
            />
            <FormButton title="Log in" />
            <span className="forgot_password">Forgot your password?</span>
        </div>
    );
};

const FormButton = (props) => (
    <div id="button" className="rows">
        <button>{props.title}</button>
    </div>
);

const FormInput = (props) => (
    <div className="rows">
        <label>{props.description}</label>
        <input type={props.type} placeholder={props.placeholder} />
    </div>
);

const FormInputPassword = (props) => {
    const [showPassword, setShowPassword] = useState(false);

    const handleShowHidePassword = () => {
        setShowPassword(!showPassword);
    };

    return (
        <div className="rows">
            <label>{props.description}</label>
            <input type={showPassword ? 'text' : 'password'} placeholder={props.placeholder} />
            <span onClick={handleShowHidePassword}>
                <FontAwesomeIcon
                    icon={showPassword ? faEye : faEyeSlash}
                // className={showPassword ? 'fas fa-eye show-password' : 'fas fa-eye-slash show-password'}
                />
            </span>
        </div>
    );
};
const OtherMethods = (props) => (
    <div id="alternativeLogin">
        <label>Or sign in with:</label>
        <div id="iconGroup">
            <Facebook />
            <Twitter />
            <Google />
        </div>
    </div>
);

const Facebook = () => <FontAwesomeIcon icon={faFacebook} size="2x" style={{ marginRight: '10px', color: '#0866FF' }} />;
const Twitter = () => <FontAwesomeIcon icon={faTwitter} size="2x" style={{ marginRight: '10px', color: '#2593E9' }} />;
const Google = () => (
    <img src={google_logo} alt="Google" />
);


function Login() {
    return (
        <div className="login_container">
            <div id="loginform">
                <FormHeader title="Login" />
                <Form />
                <OtherMethods />
            </div>
        </div>
    );
}

export default Login;

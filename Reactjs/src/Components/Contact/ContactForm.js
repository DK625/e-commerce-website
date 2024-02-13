import React from 'react';

const ContactForm = () => {
    return (
        <div className="col-lg-7 mb-5">
            <div className="contact-form">
                <div id="success"></div>
                <form name="sentMessage" id="contactForm" noValidate="noValidate">
                    {["Your Name", "Your Email", "Subject", "Message"].map((field, index) => (
                        <div key={index} className="control-group">
                            <input
                                type={index === 1 ? "email" : "text"}
                                className="form-control"
                                id={field.toLowerCase()}
                                placeholder={field}
                                required="required"
                                data-validation-required-message={`Please enter your ${field.toLowerCase()}`}
                            />
                            <p className="help-block text-danger" style={{ margin: '12px' }}></p>
                        </div>
                    ))}
                    <div>
                        <button className="btn btn-primary py-2 px-4" type="submit" id="sendMessageButton">
                            Send Message
                        </button>
                    </div>
                </form>
            </div>
        </div>
    );
}

export default ContactForm;

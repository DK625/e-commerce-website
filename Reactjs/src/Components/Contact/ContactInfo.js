import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faMapMarkerAlt, faEnvelope, faPhoneAlt } from '@fortawesome/free-solid-svg-icons';

const ContactInfo = () => {
    return (
        <div className="col-lg-5 mb-5">
            <h5 className="font-weight-semi-bold mb-3">Get In Touch</h5>
            <p>Justo sed diam ut sed amet duo amet lorem amet stet sea ipsum, sed duo amet et. Est elitr dolor elitr erat sit sit. Dolor diam et erat clita ipsum justo sed.</p>

            <div className="d-flex flex-column mb-3">
                <h5 className="font-weight-semi-bold mb-3">Store 1</h5>
                <p className="mb-2"><FontAwesomeIcon icon={faMapMarkerAlt} className="text-primary mr-3" />123 Street, New York, USA</p>
                <p className="mb-2"><FontAwesomeIcon icon={faEnvelope} className="text-primary mr-3" />info@example.com</p>
                <p className="mb-2"><FontAwesomeIcon icon={faPhoneAlt} className="text-primary mr-3" />+012 345 67890</p>
            </div>

            <div className="d-flex flex-column">
                <h5 className="font-weight-semi-bold mb-3">Store 2</h5>
                <p className="mb-2"><FontAwesomeIcon icon={faMapMarkerAlt} className="text-primary mr-3" />123 Street, New York, USA</p>
                <p className="mb-2"><FontAwesomeIcon icon={faEnvelope} className="text-primary mr-3" />info@example.com</p>
                <p className="mb-0"><FontAwesomeIcon icon={faPhoneAlt} className="text-primary mr-3" />+012 345 67890</p>
            </div>
        </div>
    );
}

export default ContactInfo;

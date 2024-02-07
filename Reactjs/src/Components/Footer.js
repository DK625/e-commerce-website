import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faAngleRight } from '@fortawesome/free-solid-svg-icons';
import { faMapMarkerAlt, faEnvelope, faPhoneAlt } from '@fortawesome/free-solid-svg-icons';
import payment from '../assets/img/payments.png'

const firstLinksData = [
    { text: 'Home', href: 'index.html' },
    { text: 'Our Shop', href: 'shop.html' },
    { text: 'Shop Detail', href: 'detail.html' },
    { text: 'Shopping Cart', href: 'cart.html' },
    { text: 'Checkout', href: 'checkout.html' },
    { text: 'Contact Us', href: 'contact.html' },
];

const secondLinksData = [
    { text: 'Home', href: 'index.html' },
    { text: 'Our Shop', href: 'shop.html' },
    { text: 'Shop Detail', href: 'detail.html' },
];

const FooterLink = ({ text, href }) => (
    <a className="text-dark mb-2" href={href}>
        <FontAwesomeIcon icon={faAngleRight} className="mr-2" />
        {text}
    </a>
);

const contactInfo = [
    { icon: faMapMarkerAlt, text: '123 Street, New York, USA', className: 'mb-2' },
    { icon: faEnvelope, text: 'info@example.com', className: 'mb-2' },
    { icon: faPhoneAlt, text: '+012 345 67890', className: 'mb-0' },
];

const ContactInfoItem = ({ icon, text, className }) => (
    <p className={className}>
        <FontAwesomeIcon icon={icon} className="text-primary mr-3" />
        {text}
    </p>
);
const Footer = () => {
    return (
        <div className="container-fluid bg-secondary text-dark mt-5 pt-5">
            <div className="row px-xl-5 pt-5">
                <div className="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                    <a href="" className="text-decoration-none">
                        <h1 className="mb-4 display-5 font-weight-semi-bold"><span
                            className="text-primary font-weight-bold border border-white px-3 mr-1">E</span>Shopper</h1>
                    </a>
                    <p>Dolore erat dolor sit lorem vero amet. Sed sit lorem magna, ipsum no sit erat lorem et magna ipsum
                        dolore amet erat.</p>
                    {contactInfo.map((info, index) => (
                        <ContactInfoItem key={index} {...info} />
                    ))}
                </div>
                <div className="col-lg-8 col-md-12">
                    <div className="row">
                        <div className="col-md-4 mb-5">
                            <h5 className="font-weight-bold text-dark mb-4">First Quick Links</h5>
                            <div className="d-flex flex-column justify-content-start">
                                {firstLinksData.map((link, index) => (
                                    <FooterLink key={index} text={link.text} href={link.href} />
                                ))}
                            </div>
                        </div>
                        <div className="col-md-4 mb-5">
                            <h5 className="font-weight-bold text-dark mb-4">Second Quick Links</h5>
                            <div className="d-flex flex-column justify-content-start">
                                {secondLinksData.map((link, index) => (
                                    <FooterLink key={index} text={link.text} href={link.href} />
                                ))}
                            </div>
                        </div>
                        <div className="col-md-4 mb-5">
                            <h5 className="font-weight-bold text-dark mb-4">Newsletter</h5>
                            <form action="">
                                <div className="form-group">
                                    <input type="text" className="form-control border-0 py-4" placeholder="Your Name"
                                        required="required" />
                                </div>
                                <div className="form-group">
                                    <input type="email" className="form-control border-0 py-4" placeholder="Your Email"
                                        required="required" />
                                </div>
                                <div>
                                    <button className="btn btn-primary btn-block border-0 py-3" type="submit">Subscribe
                                        Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div className="row border-top border-light mx-xl-5 py-4">
                <div className="col-md-6 px-xl-0">
                    <p className="mb-md-0 text-center text-md-left text-dark">
                        &copy; <a className="text-dark font-weight-semi-bold" href="#">Your Site Name</a>. All Rights Reserved.
                        Designed
                        by
                        <a className="text-dark font-weight-semi-bold" href="https://htmlcodex.com">HTML Codex</a><br />
                        Distributed By <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                    </p>
                </div>
                <div className="col-md-6 px-xl-0 text-center text-md-right">
                    <img className="img-fluid" src={payment} alt="" />
                </div>
            </div>
        </div>
    );
}

export default Footer;

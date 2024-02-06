import React, { useState } from 'react';
import { Slide } from 'react-slideshow-image';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faAngleDown } from '@fortawesome/free-solid-svg-icons';
import carousel_1 from '../assets/img/carousel-1.jpg'
import carousel_2 from '../assets/img/carousel-2.jpg'
import '../assets/css/style.css'

const Navbar = () => {
    const [isNavbarVisible, setNavbarVisible] = useState(true);
    const [isDressesVisible, setDressesVisible] = useState(false);
    const images = [carousel_1, carousel_2];

    const toggleNavbar = () => {
        setNavbarVisible(!isNavbarVisible);
    };

    const toggleDresses = () => {
        setDressesVisible(!isDressesVisible);
        console.log('isDressesVisible: ', isDressesVisible)
    };

    return (
        <div className="row border-top px-xl-5">
            <div className="col-lg-3 d-none d-lg-block">
                <a
                    className="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
                    onClick={toggleNavbar}
                    style={{ height: '65px', marginTop: '-1px', padding: '0 30px' }}
                >
                    <h6 className="m-0">Categories</h6>
                    <FontAwesomeIcon icon={faAngleDown} className="text-dark" />
                </a>

                {isNavbarVisible && (
                    <nav
                        className="navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0"
                        id="navbar-vertical"
                    >
                        <div className="navbar-nav w-100 overflow-hidden" >
                            <div className="nav-item dropdown">
                                <a href="#" className="nav-link"
                                    onClick={() => {
                                        toggleDresses();
                                    }} >
                                    Dresses <FontAwesomeIcon icon={faAngleDown} className="float-right mt-1" />
                                </a>
                                {isDressesVisible && (
                                    <div className="bg-secondary position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                        <a href="" className="dropdown-item">
                                            Men's Dresses
                                        </a>
                                        <a href="" className="dropdown-item">
                                            Women's Dresses
                                        </a>
                                        <a href="" className="dropdown-item">
                                            Baby's Dresses
                                        </a>
                                    </div>)}
                            </div>
                            <a href="" className="nav-item nav-link">
                                Shirts
                            </a>
                            <a href="" className="nav-item nav-link">
                                Jeans
                            </a>
                            <a href="" className="nav-item nav-link">
                                Swimwear
                            </a>
                            <a href="" className="nav-item nav-link">
                                Sleepwear
                            </a>
                            <a href="" className="nav-item nav-link">
                                Sportswear
                            </a>
                            <a href="" className="nav-item nav-link">
                                Jumpsuits
                            </a>
                            <a href="" className="nav-item nav-link">
                                Blazers
                            </a>
                            <a href="" className="nav-item nav-link">
                                Jackets
                            </a>
                            <a href="" className="nav-item nav-link">
                                Shoes
                            </a>
                        </div>
                    </nav>
                )}
            </div>



            <div className="col-lg-9 d-flex flex-column">
                <nav className="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" className="text-decoration-none d-block d-lg-none">
                        <h1 className="m-0 display-5 font-weight-semi-bold"><span
                            className="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                    </a>
                    <button type="button" className="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div className="navbar-nav mr-auto py-0">
                            <a href="index.html" className="nav-item nav-link active">Home</a>
                            <a href="shop.html" className="nav-item nav-link">Shop</a>
                            <a href="detail.html" className="nav-item nav-link">Products Detail</a>
                            <div className="nav-item dropdown">
                                <a href="#" className="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                <div className="dropdown-menu rounded-0 m-0">
                                    <a href="cart.html" className="dropdown-item">Shopping Cart</a>
                                    <a href="checkout.html" className="dropdown-item">Checkout</a>
                                    <a href="order_tracking.html" className="dropdown-item">Order Tracking</a>

                                </div>
                            </div>
                            <a href="contact.html" className="nav-item nav-link">Contact</a>
                        </div>
                        <div className="navbar-nav ml-auto py-0">
                            <a href="login-form-v4/Login_v4/login.html" className="nav-item nav-link">Login</a>
                            <a href="sign_up_form/colorlib-regform-8/index.html" className="nav-item nav-link">Register</a>
                        </div>
                    </div>
                </nav>
                {/* <Slide>
                    <div className="each-slide-effect">
                        <div className="carousel-item active" style={{ height: '380px' }}>
                            <img className="img-fluid" src={carousel_1} alt="Image" />
                            <div className="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div className="p-3" style={{ maxWidth: '700px' }}>
                                    <h4 className="text-light text-uppercase font-weight-medium mb-3">10% Off Your First
                                        Order</h4>
                                    <h3 className="display-4 text-white font-weight-semi-bold mb-4">Fashionable Dress</h3>
                                    <a href="" className="btn btn-light py-2 px-3">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="carousel-item active" style={{ height: '380px' }}>
                        <img className="img-fluid" src={carousel_2} alt="Image" />
                        <div className="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div className="p-3" style={{ maxWidth: '700px' }}>
                                <h4 className="text-light text-uppercase font-weight-medium mb-3">10% Off Your First
                                    Order</h4>
                                <h3 className="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                                <a href="" className="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </Slide> */}
                <Slide images={images} duration={50000} transitionDuration={500} height="100%">
                    {images.map((image, index) => (
                        <div key={index} className="each-slide-effect">
                            <div className="carousel-item" style={{
                                backgroundImage: `url(${image})`,
                                height: '383px',
                                // height: '100%',
                                // backgroundSize: 'cover',
                                // backgroundPosition: 'center'
                            }}>
                                {/* <di v> */}
                                <div className="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    {/* <div> */}
                                    <div className="p-5">
                                        <h4 className="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 className="display-4 text-white font-weight-semi-bold mb-4">Fashionable Dress</h3>
                                        <a href="" className="btn btn-light py-2 px-3">
                                            Shop Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ))}
                </Slide>
            </div>



        </div>
    );
};

export default Navbar;

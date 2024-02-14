import React, { useState, useEffect } from 'react';
import { Slide } from 'react-slideshow-image';
import { Link, useLocation } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faAngleDown, faAngleLeft, faAngleRight } from '@fortawesome/free-solid-svg-icons';
import carousel_1 from '../assets/img/carousel-1.jpg'
import carousel_2 from '../assets/img/carousel-2.jpg'

const Navbar = ({ inputImages }) => {
    const [isNavbarVisible, setNavbarVisible] = useState(true);
    const [isDressesVisible, setDressesVisible] = useState(false);

    const [currentPath, setCurrentPath] = useState('/');
    const location = useLocation();

    useEffect(() => {
        setCurrentPath(location.pathname);
    }, [location.pathname]);

    const NavLink = ({ to, children }) => {
        const { pathname } = useLocation();
        const isActive = pathname === to;

        const linkStyle = {
            color: isActive ? '#D19C97' : '',
        };

        const linkClass = `${categoryClass} ${isActive ? 'active' : ''}`;

        return (
            <Link to={to} className={linkClass} style={linkStyle}>
                {children}
            </Link>
        );
    };

    const defaultImages = [
        { url: carousel_1, slideTitle: '10% Off Your First Order', slideSubtitle: 'Fashionable Dress' },
        { url: carousel_2, slideTitle: '10% Off Your First Order', slideSubtitle: 'Reasonable Price' }
    ];

    const toggleNavbar = () => {
        setNavbarVisible(!isNavbarVisible);
    };

    const toggleDresses = () => {
        setDressesVisible(!isDressesVisible);
    };

    const categoryClass = "nav-item nav-link";

    const pageClass = "dropdown-item";

    const imagesResult = inputImages || defaultImages;

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
                                <a href="#" className="nav-link" onClick={toggleDresses}>
                                    Dresses <FontAwesomeIcon icon={faAngleDown} className="float-right mt-1" />
                                </a>
                                {isDressesVisible && (
                                    <div className="bg-secondary position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                        <a href="" className={pageClass}>Men's Dresses</a>
                                        <a href="" className={pageClass}>Women's Dresses</a>
                                        <a href="" className={pageClass}>Baby's Dresses</a>
                                    </div>)}
                            </div>
                            <a href="" className={categoryClass}>Shirts</a>
                            <a href="" className={categoryClass}>Jeans</a>
                            <a href="" className={categoryClass}>Swimwear</a>
                            <a href="" className={categoryClass}>Sleepwear</a>
                            <a href="" className={categoryClass}>Sportswear</a>
                            <a href="" className={categoryClass}>Jumpsuits</a>
                            <a href="" className={categoryClass}>Blazers</a>
                            <a href="" className={categoryClass}>Jackets</a>
                            <a href="" className={categoryClass}>Shoes</a>
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
                            <NavLink to="/">Home</NavLink>
                            <NavLink to="/shop">Shop</NavLink>
                            <NavLink to="/about_us">About us</NavLink>
                            <NavLink to="/blog">Blog</NavLink>
                            <NavLink to="/contact" className={categoryClass}>Contact us</NavLink>
                        </div>
                        <div className="navbar-nav ml-auto py-0">
                            <Link to='/login' className={categoryClass}>Login</Link>
                            <a href="sign_up_form/colorlib-regform-8/index.html" className={categoryClass}>Register</a>
                        </div>
                    </div>
                </nav>
                <Slide
                    // images={imagesResult}
                    duration={5000}
                    transitionDuration={500}
                    height="100%"
                    prevArrow={<FontAwesomeIcon icon={faAngleLeft} className='carousel-control-prev btn btn-dark' />}
                    nextArrow={<FontAwesomeIcon icon={faAngleRight} className='carousel-control-next btn btn-dark' />}
                >
                    {imagesResult.map((image, index) => (
                        <div key={index} className="each-slide-effect">
                            <div className="carousel-item" style={{
                                backgroundImage: `url(${image.url})`,
                                height: '383px',
                            }}>
                                <div className="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div className="p-5">
                                        <h4 className="text-light text-uppercase font-weight-medium mb-3">
                                            {image.slideTitle ? image.slideTitle : 'Default Title'}
                                        </h4>
                                        <h3 className="display-4 text-white font-weight-semi-bold mb-4">
                                            {image.slideSubtitle ? image.slideSubtitle : 'Default Subtitle'}
                                        </h3>
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

import { React, useState } from 'react'
import { Link } from 'react-router-dom'
import './Header.css'

import MenuIcon from '@material-ui/icons/Menu';
import ClearIcon from '@material-ui/icons/Clear';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faFacebookF, faTwitter, faLinkedinIn, faInstagram, faYoutube } from '@fortawesome/free-brands-svg-icons';
import { faSearch, faHeart, faShoppingCart } from '@fortawesome/free-solid-svg-icons';

function Header() {

    const [menutoggle, setMenutoggle] = useState(false)

    const Toggle = () => {
        setMenutoggle(!menutoggle)
    }

    const closeMenu = () => {
        setMenutoggle(false)
    }

    return (
        <div className="container-fluid">
            <div className="row bg-header py-2 px-xl-5">
                <div className="col-lg-6 d-none d-lg-block">
                    <div className="d-inline-flex align-items-center">
                        <a className="text-dark" href="">FAQs</a>
                        <span className="text-muted px-2">|</span>
                        <a className="text-dark" href="">Help</a>
                        <span className="text-muted px-2">|</span>
                        <a className="text-dark" href="">Support</a>
                    </div>
                </div>
                <div className="col-lg-6 text-center text-lg-right">
                    <div className="d-inline-flex align-items-center">
                        <a className="text-dark px-2" href="">
                            <FontAwesomeIcon icon={faFacebookF} />
                        </a>
                        <a className="text-dark px-2" href="">
                            <FontAwesomeIcon icon={faTwitter} />
                        </a>
                        <a className="text-dark px-2" href="">
                            <FontAwesomeIcon icon={faLinkedinIn} />
                        </a>
                        <a className="text-dark px-2" href="">
                            <FontAwesomeIcon icon={faInstagram} />
                        </a>
                        <a className="text-dark pl-2" href="">
                            <FontAwesomeIcon icon={faYoutube} />
                        </a>
                    </div>
                </div>
            </div>
            <div className="row align-items-center py-3 px-xl-5">
                <div className="col-lg-3 d-none d-lg-block">
                    <a href="" className="text-decoration-none">
                        <h1 className="m-0 display-5 font-weight-semi-bold"><span
                            className="text-header-color font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                    </a>
                </div>
                <div className="col-lg-6 col-6 text-left">
                    <form action="">
                        <div className="input-group">
                            <input type="text" className="form-control" placeholder="Search for products" />
                            <div className="input-group-append">
                                <span className="input-group-text bg-transparent text-header-color">
                                    <FontAwesomeIcon icon={faSearch} />
                                </span>
                            </div>
                        </div>
                    </form>
                </div>
                <div className="col-lg-3 col-6 text-right">
                    <a href="" className="btn border">
                        <FontAwesomeIcon icon={faHeart} className="text-header-color" />
                        <span className="badge">0</span>
                    </a>
                    <a href="" className="btn border">
                        <FontAwesomeIcon icon={faShoppingCart} className="text-header-color" />
                        <span className="badge">0</span>
                    </a>
                </div>
            </div>
        </div>
    )
}

export default Header

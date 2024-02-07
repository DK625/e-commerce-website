import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faAngleDoubleUp } from '@fortawesome/free-solid-svg-icons';
import Navbar from '../Components/Navbar';
import Featured from '../Components/Featured';
import Categories from '../Components/Categories';
import Offer from '../Components/Offer';
import Products from '../Components/Products';
import Subscribe from '../Components/Subscribe';
import Vendor from '../Components/Vendor';
import Footer from '../Components/Footer';

import 'react-slideshow-image/dist/styles.css';
import './Home.css';

function Home() {
    const scrollToTop = () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth',
        });
    };

    return (
        <div id='home'>
            <Navbar />
            <Featured />
            <Categories />
            <Offer />
            <Products />
            <Subscribe />
            <Vendor />
            <Footer />

            {/* <!-- Back to Top --> */}
            <button className="btn btn-primary back-to-top" onClick={scrollToTop}>
                <FontAwesomeIcon icon={faAngleDoubleUp} />
            </button>
        </div>
    );
}

export default Home;

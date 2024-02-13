import React from 'react';
import 'react-slideshow-image/dist/styles.css';
import Navbar from '../Components/Navbar';
import Featured from '../Components/HomePage/Featured';
import Categories from '../Components/HomePage/Categories';
import Offer from '../Components/HomePage/Offer';
import Products from '../Components/Products';
import Subscribe from '../Components/HomePage/Subscribe';
import Vendor from '../Components/HomePage/Vendor';
import BackToTop from '../Components/BackToTop'



function Home() {
    return (
        <div id='home'>
            <Navbar />
            <Featured />
            <Categories />
            <Offer />
            <Products productType={'Trendy Products'} />
            <Subscribe />
            <Vendor />
            <BackToTop />

            {/* product detail
            Shopping Cart
            checkout (v)
            order tracking
            white list
            comment
            About us
            Blog
            sign in
            sign up
            */}

        </div>
    );
}

export default Home;

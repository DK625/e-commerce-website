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
            checkout
            login (v)

            purchare -> order tracking (shopee)

            order tracking page web
            https://bbbootstrap.com/snippets/order-tracking-template-all-details-34023037

            white list
            comment
            About us
            Blog
            sign up
            */}

        </div>
    );
}

export default Home;

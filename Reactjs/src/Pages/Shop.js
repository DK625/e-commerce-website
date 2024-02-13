import React from 'react';
import Filter from '../Components/Shop/Filter';
import Navbar from '../Components/Navbar';
import PageHeader from '../Components/Shop/PageHeader';
import FindAndSort from '../Components/Shop/FindAndSort';
import BackToTop from '../Components/BackToTop'
import Paginate from '../Components/Shop/Paginate';
import Products from '../Components/Products';
import carousel_1 from '../assets/img/cat-1.jpg'
import carousel_2 from '../assets/img/cat-2.jpg'
import 'react-slideshow-image/dist/styles.css';

function Shop() {
    const images = [
        { url: carousel_1, slideTitle: '10% Off Your First Order', slideSubtitle: 'Fashionable Dress' },
        { url: carousel_2, slideTitle: '10% Off Your First Order', slideSubtitle: 'Reasonable Price' }
    ];
    const colSize = "col-lg-4";

    return (
        <div id='home'>
            <Navbar inputImages={images} />
            <PageHeader />

            <div class="container-fluid pt-5 row px-xl-5">
                <div class="col-lg-3 col-md-12">

                    <Filter />

                </div>
                <div class=" col-lg-9 col-md-12 row pb-3">
                    <FindAndSort />
                    <Products colSize={colSize} />
                    <Paginate />
                </div>
            </div>
            <BackToTop />
        </div>
    );
}

export default Shop;

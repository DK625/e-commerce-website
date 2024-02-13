import React from 'react';
import 'react-slideshow-image/dist/styles.css';
import Navbar from '../Components/Navbar';
import BackToTop from '../Components/BackToTop'
import PageHeader from '../Components/Shop/PageHeader';
import Products from '../Components/Products';
import ProductDetailSection from '../Components/ProductDetail/ProductDetailSection';
import ProdcutDetailTab from '../Components/ProductDetail/ProdcutDetailTab';



function ProductDetail() {
    return (
        <div>
            <Navbar />
            <PageHeader />
            <div class="container-fluid py-5">
                <ProductDetailSection />
                <ProdcutDetailTab />
            </div>
            <Products productType={'You May Also Like'} />
            <BackToTop />
        </div>
    );
}

export default ProductDetail;

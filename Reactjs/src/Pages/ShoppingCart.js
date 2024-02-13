import React from 'react';
import Navbar from '../Components/Navbar';
import PageHeader from '../Components/Shop/PageHeader';
import CartItem from '../Components/Cart/CartItem';
import CartSummary from '../Components/Cart/CartSummary';
import CouponForm from '../Components/Cart/CouponForm';
import BackToTop from '../Components/BackToTop'
import carousel_1 from '../assets/img/cat-1.jpg'
import carousel_2 from '../assets/img/cat-2.jpg'
import product_1 from '../assets/img/product-1.jpg'
import product_2 from '../assets/img/product-2.jpg'
import product_3 from '../assets/img/product-3.jpg'
import product_4 from '../assets/img/product-4.jpg'
import product_5 from '../assets/img/product-5.jpg'
import 'react-slideshow-image/dist/styles.css';

function Cart() {
    const images = [
        { url: carousel_1, slideTitle: '10% Off Your First Order', slideSubtitle: 'Fashionable Dress' },
        { url: carousel_2, slideTitle: '10% Off Your First Order', slideSubtitle: 'Reasonable Price' }
    ];

    return (
        <div id='home'>
            <Navbar inputImages={images} />
            <PageHeader />

            <div className="container-fluid pt-5">
                <div className="row px-xl-5">
                    <div className="col-lg-8 table-responsive mb-5">
                        <table className="table table-bordered text-center mb-0">
                            <thead className="bg-secondary text-dark">
                                <tr>
                                    <th>Products</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody className="align-middle">
                                <CartItem imageSrc={product_1} productName="Colorful Stylish Shirt" price="150" />
                                <CartItem imageSrc={product_2} productName="Colorful Stylish Shirt" price="150" />
                                <CartItem imageSrc={product_3} productName="Colorful Stylish Shirt" price="150" />
                                <CartItem imageSrc={product_4} productName="Colorful Stylish Shirt" price="150" />
                                <CartItem imageSrc={product_5} productName="Colorful Stylish Shirt" price="150" />
                            </tbody>
                        </table>
                    </div>
                    <div className="col-lg-4">
                        <CouponForm />
                        <CartSummary />
                    </div>
                </div>
            </div>
            <BackToTop />
        </div>
    );
}

export default Cart;

import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEye, faShoppingCart } from '@fortawesome/free-solid-svg-icons';
import { Link } from 'react-router-dom';
import product_1 from '../assets/img/product-1.jpg';
import product_2 from '../assets/img/product-2.jpg';
import product_3 from '../assets/img/product-3.jpg';
import product_4 from '../assets/img/product-4.jpg';
import product_5 from '../assets/img/product-5.jpg';
import product_6 from '../assets/img/product-6.jpg';
import product_7 from '../assets/img/product-7.jpg';
import product_8 from '../assets/img/product-8.jpg';

const productsData = [
    { id: 1, img: product_1, name: 'Colorful Stylish Shirt', price: 123.00 },
    { id: 2, img: product_2, name: 'Colorful Stylish Shirt', price: 123.00 },
    { id: 3, img: product_3, name: 'Colorful Stylish Shirt', price: 123.00 },
    { id: 4, img: product_4, name: 'Colorful Stylish Shirt', price: 123.00 },
    { id: 5, img: product_5, name: 'Colorful Stylish Shirt', price: 123.00 },
    { id: 6, img: product_6, name: 'Colorful Stylish Shirt', price: 123.00 },
    { id: 7, img: product_7, name: 'Colorful Stylish Shirt', price: 123.00 },
    { id: 8, img: product_8, name: 'Colorful Stylish Shirt', price: 123.00 },
];
const Products = ({ colSize, productType }) => {
    const size = colSize || "col-lg-3";
    return (
        <div className="container-fluid pt-5">
            {productType && (
                <div className="text-center mb-4">
                    <h2 className="section-title px-5"><span className="px-2">{productType || 'Trendy Products'}</span></h2>
                </div>
            )}
            <div className="row px-xl-5 pb-3">
                {productsData.map((product) => (
                    <div key={product.id} className={`${size} col-md-6 col-sm-12 pb-1`}>
                        <div className="card product-item border-0 mb-4">
                            <div className="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <Link to='/product_detail'><img className="img-fluid w-100" src={product.img} alt={product.name} /></Link>
                            </div>
                            <div className="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 className="text-truncate mb-3">{product.name}</h6>
                                <div className="d-flex justify-content-center">
                                    <h6>${product.price}</h6>
                                    <h6 className="text-muted ml-2"><del>${product.price}</del></h6>
                                </div>
                            </div>
                            <div className="card-footer d-flex justify-content-between bg-light border">
                                <Link to='/product_detail' className="btn btn-sm text-dark p-0">
                                    <FontAwesomeIcon icon={faEye} className="text-primary mr-1" />
                                    View Detail
                                </Link>
                                <a href="" className="btn btn-sm text-dark p-0"><FontAwesomeIcon icon={faShoppingCart} className="text-primary mr-1" />Add To Cart</a>
                            </div>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
}

export default Products;

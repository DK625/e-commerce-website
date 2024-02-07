import React from 'react';
import cat_1 from '../assets/img/cat-1.jpg';
import cat_2 from '../assets/img/cat-2.jpg';
import cat_3 from '../assets/img/cat-3.jpg';
import cat_4 from '../assets/img/cat-4.jpg';
import cat_5 from '../assets/img/cat-5.jpg';
import cat_6 from '../assets/img/cat-6.jpg';

const categoriesData = [
    { id: 1, name: "Men's dresses", image: cat_1 },
    { id: 2, name: "Women's dresses", image: cat_2 },
    { id: 3, name: "Baby's dresses", image: cat_3 },
    { id: 4, name: "Accessories", image: cat_4 },
    { id: 5, name: "Bags", image: cat_5 },
    { id: 6, name: "Shoes", image: cat_6 },
];

function Categories() {
    return (
        <div className="container-fluid pt-5">
            <div className="row px-xl-5 pb-3">
                {categoriesData.map(category => (
                    <div key={category.id} className="col-lg-4 col-md-6 pb-1">
                        <div className="cat-item d-flex flex-column border mb-4" style={{ padding: '30px' }}>
                            <p className="text-right">15 Products</p>
                            <a href="" className="cat-img position-relative overflow-hidden mb-3">
                                <img className="img-fluid" src={category.image} alt={category.name} />
                            </a>
                            <h5 className="font-weight-semi-bold m-0">{category.name}</h5>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
}

export default Categories;

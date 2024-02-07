import React from 'react';
import { Slide } from 'react-slideshow-image';
import vendor_1 from '../assets/img/vendor-1.jpg';
import vendor_2 from '../assets/img/vendor-2.jpg';
import vendor_3 from '../assets/img/vendor-3.jpg';
import vendor_4 from '../assets/img/vendor-4.jpg';
import vendor_5 from '../assets/img/vendor-5.jpg';
import vendor_6 from '../assets/img/vendor-6.jpg';
import vendor_7 from '../assets/img/vendor-7.jpg';
import vendor_8 from '../assets/img/vendor-8.jpg';

const vendorData = [
    { id: 1, img: vendor_1 },
    { id: 2, img: vendor_2 },
    { id: 3, img: vendor_3 },
    { id: 4, img: vendor_4 },
    { id: 5, img: vendor_5 },
    { id: 6, img: vendor_6 },
    { id: 7, img: vendor_7 },
    { id: 8, img: vendor_8 },
];

const Vendor = () => {
    const slideProperties = {
        duration: 5000,
        transitionDuration: 500,
        infinite: true,
        indicators: true,
        arrows: true,
        slidesToShow: 6, // Set the number of items to show in each slide
        slidesToScroll: 1,
    };

    return (
        <div className="container-fluid py-5">
            <div className="row px-xl-5">
                <div className="col">
                    <Slide {...slideProperties}>
                        {vendorData.map((vendor) => (
                            <div key={vendor.id} className="vendor-item border p-4">
                                <img src={vendor.img} alt="" />
                            </div>
                        ))}
                    </Slide>
                </div>
            </div>
        </div>
    );
}

export default Vendor;

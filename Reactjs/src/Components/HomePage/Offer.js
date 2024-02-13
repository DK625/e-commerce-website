import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCheck, faShippingFast, faExchangeAlt, faPhoneVolume } from '@fortawesome/free-solid-svg-icons';
import offer_1 from '../../assets/img/offer-1.png'
import offer_2 from '../../assets/img/offer-2.png'


const featuresData = [
    { id: 1, img: offer_1, icon: faCheck, text: "Spring Collection" },
    { id: 2, img: offer_2, icon: faShippingFast, text: "Winter Collection" },
];

const Offer = () => {
    return (
        <div className="container-fluid offer pt-5">
            <div className="row px-xl-5">
                {featuresData.map((feature) => (
                    <div key={feature.id} className="col-md-6 pb-4">
                        <div key={feature.id} className={`position-relative bg-secondary text-center text-white mb-2 py-5 px-5 ${feature.id % 2 === 0 ? 'text-md-left' : 'text-md-right'}`}>
                            <img src={feature.img} alt="" />
                            <div className="position-relative" style={{ zIndex: 1 }}>
                                <h5 className="text-uppercase text-primary mb-3">20% off the all order</h5>
                                <h1 className="mb-4 font-weight-semi-bold">{feature.text}</h1>
                                <a href="" className="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
}

export default Offer;

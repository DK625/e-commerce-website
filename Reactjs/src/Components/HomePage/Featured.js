import React from 'react';
import { faCheck, faShippingFast, faExchangeAlt, faPhoneVolume } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

const featuresData = [
    { id: 1, icon: faCheck, text: "Quality Product" },
    { id: 2, icon: faShippingFast, text: "Free Shipping" },
    { id: 3, icon: faExchangeAlt, text: "14-Day Return" },
    { id: 4, icon: faPhoneVolume, text: "24/7 Support" },
];

function Featured() {
    return (
        <div className="container-fluid pt-5">
            <div className="row px-xl-5 pb-3">
                {featuresData.map(feature => (
                    <div key={feature.id} className="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div className="d-flex align-items-center border mb-4" style={{ padding: '30px' }}>
                            <FontAwesomeIcon icon={feature.icon} className="text-primary m-0 mr-3" size="2x" />
                            <h5 className="font-weight-semi-bold m-0">{feature.text}</h5>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
}

export default Featured;

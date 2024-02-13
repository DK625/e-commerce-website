import React, { useState } from 'react';
import 'react-slideshow-image/dist/styles.css';
import Navbar from '../Components/Navbar';
import BackToTop from '../Components/BackToTop'
import PageHeader from '../Components/Shop/PageHeader';
import AddressForm from '../Components/CheckOut/AddressForm'
import OrderTotalCard from '../Components/CheckOut/OrderTotalCard';
import PaymentCard from '../Components/CheckOut/PaymentCard';
import AdditionalOptions from '../Components/CheckOut/AdditionalOptions';

function CheckOut() {
    const [shipToDifferentAddress, setShipToDifferentAddress] = useState(false);

    const handleShipToDifferentAddressToggle = () => {
        setShipToDifferentAddress(!shipToDifferentAddress);
    };

    return (
        <div>
            <Navbar />
            <PageHeader />
            <div class="container-fluid pt-5">
                <div class="row px-xl-5">
                    <div class="col-lg-8">
                        <AddressForm title="Billing Address" prefix="" />
                        <AdditionalOptions onShipToDifferentAddressToggle={handleShipToDifferentAddressToggle} />
                        <div className={`collapse mb-4 ${shipToDifferentAddress ? 'show' : ''}`} id="shipping-address">
                            <AddressForm title="Shipping Address" prefix="" isVisible={shipToDifferentAddress} />
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <OrderTotalCard />
                        <PaymentCard />
                    </div>
                </div>
            </div>
            < BackToTop />
        </div >
    );
}

export default CheckOut;

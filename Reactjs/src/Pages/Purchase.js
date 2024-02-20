import React from 'react';
import 'react-slideshow-image/dist/styles.css';
import Navbar from '../Components/Navbar';
import BackToTop from '../Components/BackToTop'
import '../Components/Purchase/Purchase.css'
import avt from '../assets/img/vendor-8.jpg'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEdit } from '@fortawesome/free-solid-svg-icons';

const username = localStorage.getItem('username');

function Purchase() {
    return (
        <div>
            <Navbar />
            <div className='purchase-container'>
                <div className='account'>
                    <div className='edit-profile'>
                        <div className='image'>
                            <img src={avt} height='100%'></img>
                        </div>
                        <div className='text'>
                            <div className='username'> {username}</div>
                            <div> <FontAwesomeIcon icon={faEdit} /> Edit profile </div>
                        </div>
                    </div>
                    <div className='account-option'>
                        <div> <FontAwesomeIcon icon={faEdit} /> My account </div>
                        <div> <FontAwesomeIcon icon={faEdit} /> Order </div>
                        <div> <FontAwesomeIcon icon={faEdit} /> Notification </div>
                        <div> <FontAwesomeIcon icon={faEdit} /> Voucher </div>
                        <div> <FontAwesomeIcon icon={faEdit} /> Coins </div>
                        {/* <div className='option'></div>
                        <div className='option'></div> */}
                    </div>

                </div>
                <div className='order'></div>
            </div>
            < BackToTop />
        </div >
    );
}

export default Purchase;

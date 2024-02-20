import React from 'react';
import 'react-slideshow-image/dist/styles.css';
import Navbar from '../Components/Navbar';
import BackToTop from '../Components/BackToTop'
import '../Components/Purchase/Purchase.css'
import avt from '../assets/img/vendor-8.jpg'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEdit, faUser, faClipboardList, faBell, faTicketAlt, faCoins } from '@fortawesome/free-solid-svg-icons';

const username = localStorage.getItem('username');

function Purchase() {
    return (
        <div className='purchase'>
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
                        <div className='option'>
                            <div className='option-image'>
                                <img src="https://down-vn.img.susercontent.com/file/ba61750a46794d8847c3f463c5e71cc4" />
                            </div>
                            My account
                        </div>
                        <div className='option'>
                            <div className='option-image'>
                                <img src="https://down-vn.img.susercontent.com/file/f0049e9df4e536bc3e7f140d071e9078" />
                            </div>
                            <div style={{ color: '#ee4d2d' }}>Order</div>
                        </div>
                        <div className='option'>
                            <div className='option-image'>
                                <img src="https://down-vn.img.susercontent.com/file/e10a43b53ec8605f4829da5618e0717c" />
                            </div>
                            Notification
                        </div>
                        <div className='option'>
                            <div className='option-image'>
                                <img src="https://down-vn.img.susercontent.com/file/84feaa363ce325071c0a66d3c9a88748" />
                            </div>
                            Voucher
                        </div>
                        <div className='option'>
                            <div className='option-image'>
                                <img src="https://down-vn.img.susercontent.com/file/a0ef4bd8e16e481b4253bd0eb563f784" />
                            </div>
                            Coins
                        </div>
                    </div>

                </div>
                <div className='order'>
                    <div className='order-status'>
                        <div className='status'>All</div>
                        <div className='status'>Wait for pay</div>
                        <div className='status'>Transport</div>
                        <div className='status'>Waiting for delivery</div>
                        <div className='status'>Complete</div>
                        <div className='status'>Cancelled</div>
                        <div className='status'>Return/Refund</div>
                    </div>
                    <div className='order-search'>You can search by Shop name, Order ID or Product Name</div>
                    <div className='order-detail'>Baseus Official Mall
                        Chat
                        Xem Shop
                        Đơn hàng đã đến kho phân loại BN B Mega SOC
                        CHỜ GIAO HÀNG</div>
                </div>
            </div>
            < BackToTop />
        </div >
    );
}

export default Purchase;

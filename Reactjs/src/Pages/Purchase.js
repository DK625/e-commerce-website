import React, { useState } from 'react';
import 'react-slideshow-image/dist/styles.css';
import Navbar from '../Components/Navbar';
import BackToTop from '../Components/BackToTop'
import '../Components/Purchase/Purchase.css'
import avt from '../assets/img/vendor-8.jpg'
import maill from '../assets/img/mall.jpg'
import chat from '../assets/img/chat.jpg'
import shop from '../assets/img/shop.jpg'
import product from '../assets/img/product-middle.jpeg'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEdit, faSearch, faTruck, faQuestionCircle, faTicketAlt, faCoins } from '@fortawesome/free-solid-svg-icons';

const username = localStorage.getItem('username');

function Purchase() {
    const [searchText, setSearchText] = useState('');

    const handleSearchChange = (e) => {
        setSearchText(e.target.value);
    };
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
                        <div className='status active-status'>All</div>
                        <div className='status'>Wait for pay</div>
                        <div className='status'>Transport</div>
                        <div className='status'>Waiting for delivery</div>
                        <div className='status'>Complete</div>
                        <div className='status'>Cancelled</div>
                        <div className='status'>Return/Refund</div>
                    </div>
                    <div className='order-search'>
                        <div><FontAwesomeIcon icon={faSearch} /></div>
                        <div className='text'>
                            You can search by Shop name, Order ID or Product Name
                        </div>
                    </div>
                    <div className='order-detail'>
                        <div className='top'>
                            <div className='part-1'>
                                <div className='top-1'><img src={maill} /></div>
                                <div className='top-2'>Baseus Official Mall</div>
                                <div className='top-3'><img src={chat} /></div>
                                <div className='top-4'><img src={shop} /></div>
                            </div>
                            <div className='part-2'>
                                <div className='top-5'><FontAwesomeIcon icon={faTruck} /> Đơn hàng đã đến kho phân loại BN B Mega SOC <FontAwesomeIcon icon={faQuestionCircle} /></div>
                                <div className='top-6'>CHỜ GIAO HÀNG</div>
                            </div>
                        </div>
                        <div className='middle'>
                            <div className='product-image'><img src={product} /></div>
                            <div className='product-description'>
                                <div className='product-title'>Baseus hidden lens detector provides security protection against peeping</div>
                                <div className='product-classification'>Product classification: black</div>
                                <div className='product-quantity'>x1</div>
                                <span className='product-policy'>7 days return</span>
                            </div>
                            <div className='product-cost'>
                                <div className='pre-cost'>₫282.000 </div>
                                <div className='post-cost'>₫124.000</div>
                            </div>
                        </div>
                        <div className='cost'></div>
                        <div className='bottom'></div>

                    </div>
                </div>
            </div>
            < BackToTop />
        </div >
    );
}

export default Purchase;

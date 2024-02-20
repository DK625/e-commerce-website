import React from 'react';
import { SmileOutlined } from '@ant-design/icons';
import { Dropdown, Space } from 'antd';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faUser } from '@fortawesome/free-solid-svg-icons';
import { Link } from 'react-router-dom';

const User = ({ username, handleLogout }) => {
    const items = [
        {
            key: '1',
            label: (
                <a target="_blank" rel="noopener noreferrer" href="https://www.facebook.com/">
                    My account
                </a>
            ),
        },
        {
            key: '2',
            label: (
                <Link to="/user/purchase" rel="noopener noreferrer">
                    Purchase Order
                </Link>
            ),
        },
        {
            key: '2',
            label: (
                <a target="_blank" rel="noopener noreferrer" href="">
                    Hi
                </a>
            ),
            icon: <SmileOutlined />,
            disabled: true,
        },
        {
            key: '3',
            danger: true,
            label: 'Log out',
            onClick: handleLogout,
        },
    ];
    return (
        <Dropdown
            menu={{
                items,
            }}
        >
            <a onClick={(e) => e.preventDefault()}>
                <Space>
                    <div className="navbar__link--account__container">
                        <div className="avatar">
                            <div className="avatar__placeholder">
                                <FontAwesomeIcon icon={faUser} />
                            </div>
                        </div>
                        <div className="navbar__username"> {username}</div>
                    </div>
                </Space>
            </a>
        </Dropdown>
    );
}
export default User;
import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faMinus, faPlus, faTimes } from '@fortawesome/free-solid-svg-icons';

const CartItem = ({ imageSrc, productName, price }) => {
    return (
        <tr>
            <td className="align-middle">
                <img src={imageSrc} alt="error_image" style={{ width: "50px" }} /> {productName}
            </td>
            <td className="align-middle">${price}</td>
            <td className="align-middle">
                <div className="input-group quantity mx-auto" style={{ width: "100px" }}>
                    <div className="input-group-btn">
                        <button className="btn btn-sm btn-primary btn-minus">
                            <FontAwesomeIcon icon={faMinus} />
                        </button>
                    </div>
                    <input type="text" className="form-control form-control-sm bg-secondary text-center" value="1" />
                    <div className="input-group-btn">
                        <button className="btn btn-sm btn-primary btn-plus">
                            <FontAwesomeIcon icon={faPlus} />
                        </button>
                    </div>
                </div>
            </td>
            <td className="align-middle">${price}</td>
            <td className="align-middle">
                <button className="btn btn-sm btn-primary">
                    <FontAwesomeIcon icon={faTimes} />
                </button>
            </td>
        </tr>
    );
}

export default CartItem;

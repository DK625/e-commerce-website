const AdditionalOptions = ({ onShipToDifferentAddressToggle }) => {
    return (
        <>
            <div className="col-md-12 form-group">
                <div className="custom-control custom-checkbox">
                    <input type="checkbox" className="custom-control-input" id="newaccount" />
                    <label className="custom-control-label" htmlFor="newaccount">Create an account</label>
                </div>
            </div>
            <div className="col-md-12 form-group">
                <div className="custom-control custom-checkbox">
                    <input
                        type="checkbox"
                        className="custom-control-input"
                        id="shipto"
                        onChange={onShipToDifferentAddressToggle}
                    />
                    <label
                        className="custom-control-label"
                        htmlFor="shipto"
                    >
                        Ship to different address
                    </label>
                </div>
            </div>
        </>
    );
};
export default AdditionalOptions
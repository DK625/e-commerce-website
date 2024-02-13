const AddressForm = ({ title, prefix, isVisible = true }) => {
    return (
        <div className={`mb-4 ${isVisible ? 'visible' : 'invisible'}`}>
            <h4 className="font-weight-semi-bold mb-4">{title}</h4>
            <div className="row">
                <div className="col-md-6 form-group">
                    <label>{prefix}First Name</label>
                    <input className="form-control" type="text" placeholder="John" />
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}Last Name</label>
                    <input className="form-control" type="text" placeholder="Doe" />
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}E-mail</label>
                    <input className="form-control" type="text" placeholder="example@email.com" />
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}Mobile No</label>
                    <input className="form-control" type="text" placeholder="+123 456 789" />
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}Address Line 1</label>
                    <input className="form-control" type="text" placeholder="123 Street" />
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}Address Line 2</label>
                    <input className="form-control" type="text" placeholder="123 Street" />
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}Country</label>
                    <select className="custom-select">
                        <option selected>United States</option>
                        <option>Afghanistan</option>
                        <option>Albania</option>
                        <option>Algeria</option>
                    </select>
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}City</label>
                    <input className="form-control" type="text" placeholder="New York" />
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}State</label>
                    <input className="form-control" type="text" placeholder="New York" />
                </div>
                <div className="col-md-6 form-group">
                    <label>{prefix}ZIP Code</label>
                    <input className="form-control" type="text" placeholder="123" />
                </div>
            </div>
        </div>
    );
};
export default AddressForm
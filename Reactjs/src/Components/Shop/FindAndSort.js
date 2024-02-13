import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSearch } from '@fortawesome/free-solid-svg-icons';
import { Dropdown } from 'react-bootstrap';
function FindAndSort() {
    return (
        <div class="col-12 pb-1">
            <div class="d-flex align-items-center justify-content-between mb-4">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search by name" />
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <FontAwesomeIcon icon={faSearch} />
                            </span>
                        </div>
                    </div>
                </form>
                <Dropdown className="ml-4">
                    <Dropdown.Toggle variant="border" id="triggerId">
                        Sort by
                    </Dropdown.Toggle>
                    <Dropdown.Menu align="right">
                        <Dropdown.Item href="#">Latest</Dropdown.Item>
                        <Dropdown.Item href="#">Popularity</Dropdown.Item>
                        <Dropdown.Item href="#">Best Rating</Dropdown.Item>
                    </Dropdown.Menu>
                </Dropdown>
            </div>
        </div>
    );
}

export default FindAndSort;

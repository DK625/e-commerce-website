import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faAngleDoubleUp } from '@fortawesome/free-solid-svg-icons';

function BackToTop() {
    const scrollToTop = () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth',
        });
    };
    return (
        <button className="btn btn-primary back-to-top" onClick={scrollToTop}>
            <FontAwesomeIcon icon={faAngleDoubleUp} />
        </button>
    );
}

export default BackToTop;

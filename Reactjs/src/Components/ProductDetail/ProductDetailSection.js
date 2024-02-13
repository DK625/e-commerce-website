import { Slide } from 'react-slideshow-image';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faMinus, faPlus, faShoppingCart, faStar, faStarHalfAlt, faAngleLeft, faAngleRight } from '@fortawesome/free-solid-svg-icons';
import { faFacebookF, faTwitter, faLinkedinIn, faPinterest } from '@fortawesome/free-brands-svg-icons';
import product_1 from '../../assets/img/product-1.jpg'
import product_2 from '../../assets/img/product-2.jpg'
import product_3 from '../../assets/img/product-3.jpg'
import product_4 from '../../assets/img/product-4.jpg'
function ProductDetailSection() {
    const images = [
        { url: product_1, slideTitle: '10% Off Your First Order', slideSubtitle: 'Fashionable Dress' },
        { url: product_2, slideTitle: '10% Off Your First Order', slideSubtitle: 'Reasonable Price' },
        { url: product_3, slideTitle: '10% Off Your First Order', slideSubtitle: 'Reasonable Price' },
        { url: product_4, slideTitle: '10% Off Your First Order', slideSubtitle: 'Reasonable Price' },
    ];
    const sizes = [
        { id: 1, label: 'XS' },
        { id: 2, label: 'S' },
        { id: 3, label: 'M' },
        { id: 4, label: 'L' },
        { id: 5, label: 'XL' },
    ];

    const colors = [
        { id: 1, label: 'Black' },
        { id: 2, label: 'White' },
        { id: 3, label: 'Red' },
        { id: 4, label: 'Blue' },
        { id: 5, label: 'Green' },
    ];
    const FilterGroup = ({ label, name, options }) => (
        <div className="d-flex mb-3">
            <p className="text-dark font-weight-medium mb-0 mr-3">{label}:</p>
            <form style={{ padding: 0 }}>
                {options.map((option) => (
                    <div key={option.id} className="custom-control custom-radio custom-control-inline">
                        <input type="radio" className="custom-control-input" id={`${name}-${option.id}`} name={name} />
                        <label className="custom-control-label" htmlFor={`${name}-${option.id}`}>{option.label}</label>
                    </div>
                ))}
            </form>
        </div>
    );
    return (
        <div class="row px-xl-5">
            <div class="col-lg-5 pb-5">
                <Slide
                    images={images.map(image => image.url)}
                    duration={5000}
                    transitionDuration={500}
                    prevArrow={<FontAwesomeIcon icon={faAngleLeft} className='carousel-control-prev btn btn-dark' />}
                    nextArrow={<FontAwesomeIcon icon={faAngleRight} className='carousel-control-next btn btn-dark' />}
                >
                    {images.map((image, index) => (
                        <div key={index} className="each-slide-effect">
                            <div className="carousel-item" style={{ height: '100%' }}>
                                <img
                                    src={image.url}
                                    alt={`Slide ${index + 1}`}
                                    className="d-block w-100 h-100"
                                    style={{ objectFit: 'cover', objectPosition: 'center' }}
                                />
                            </div>
                        </div>
                    ))}
                </Slide>
            </div>

            <div class="col-lg-7 pb-5">
                <h3 class="font-weight-semi-bold">Colorful Stylish Shirt</h3>
                <div class="d-flex mb-3">
                    <div class="text-primary mr-2">
                        <FontAwesomeIcon icon={faStar} />
                        <FontAwesomeIcon icon={faStar} />
                        <FontAwesomeIcon icon={faStar} />
                        <FontAwesomeIcon icon={faStar} />
                        <FontAwesomeIcon icon={faStarHalfAlt} />
                    </div>
                    <small class="pt-1">(50 Reviews)</small>
                </div>
                <h3 class="font-weight-semi-bold mb-4">$150.00</h3>
                <p class="mb-4">Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita
                    ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy.
                    Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd
                    rebum.</p>
                <div>
                    <FilterGroup label="Sizes" name="size" options={sizes} />
                    <FilterGroup label="Colors" name="color" options={colors} />
                </div>
                <div className="d-flex align-items-center mb-4 pt-2">
                    <div className="input-group quantity mr-3" style={{ width: '130px' }}>
                        <div className="input-group-btn">
                            <button className="btn btn-primary btn-minus">
                                <FontAwesomeIcon icon={faMinus} />
                            </button>
                        </div>
                        <input type="text" className="form-control bg-secondary text-center" value="1" />
                        <div className="input-group-btn">
                            <button className="btn btn-primary btn-plus">
                                <FontAwesomeIcon icon={faPlus} />
                            </button>
                        </div>
                    </div>
                    <button className="btn btn-primary px-3">
                        <FontAwesomeIcon icon={faShoppingCart} className="mr-1" /> Add To Cart
                    </button>
                </div>
                <div className="d-flex pt-2">
                    <p className="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
                    <div className="d-inline-flex">
                        <a className="text-dark px-2" href="">
                            <FontAwesomeIcon icon={faFacebookF} />
                        </a>
                        <a className="text-dark px-2" href="">
                            <FontAwesomeIcon icon={faTwitter} />
                        </a>
                        <a className="text-dark px-2" href="">
                            <FontAwesomeIcon icon={faLinkedinIn} />
                        </a>
                        <a className="text-dark px-2" href="">
                            <FontAwesomeIcon icon={faPinterest} />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default ProductDetailSection;

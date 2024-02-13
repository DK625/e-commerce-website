import React from 'react';
import 'react-slideshow-image/dist/styles.css';
import Navbar from '../Components/Navbar';
import BackToTop from '../Components/BackToTop'
import PageHeader from '../Components/Shop/PageHeader';
import ContactForm from '../Components/Contact/ContactForm';
import ContactInfo from '../Components/Contact/ContactInfo';



function Contact() {
    return (
        <div>
            <Navbar />
            <PageHeader />
            <div class="container-fluid pt-5">
                <div class="text-center mb-4">
                    <h2 class="section-title px-5"><span class="px-2">Contact For Any Queries</span></h2>
                </div>
                <div className="row px-xl-5">
                    <ContactForm />
                    <ContactInfo />
                </div>
            </div >
            < BackToTop />
        </div >
    );
}

export default Contact;

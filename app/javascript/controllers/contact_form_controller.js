// app/javascript/controllers/contact_form_controller.js
import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = ["modal", "email", "message", "contactButton"];

  connect() {
    console.log("hello contact");
  }

  openModal() {
    this.modalTarget.classList.remove("modal");
    this.modalTarget.classList.add("modal-active");
    this.toggleContactButtonVisibility();
    console.log("open modal");
  }

  closeModal() {
    this.modalTarget.classList.remove("modal-active");
    this.modalTarget.classList.add("modal");
    this.toggleContactButtonVisibility();
  }

  submit(event) {
    event.preventDefault();
    const url = '/create';
    const email = this.emailTarget.value;
    const message = this.messageTarget.value;
    console.log(email);
    console.log(message);

    fetch(url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify({
        contact: {
          email: email,
          message: message
        }
      })  // Match the format the Rails controller expects
    })
      .then(response => response.json())
      .then(data => {
        if (data.error) {
          console.error('Error sending email:', data.error);
        } else {
          console.log('Email sent successfully:', data.message);
        }
      })
      .catch(error => {
        console.error('Error sending email:', error);
      });

    // Reset the form fields
    this.emailTarget.value = "";
    this.messageTarget.value = "";

    this.toggleContactButtonVisibility();
    this.closeModal();
  }

  toggleContactButtonVisibility() {
    this.contactButtonTarget.classList.toggle("btn-contact-hidden");
  }
}

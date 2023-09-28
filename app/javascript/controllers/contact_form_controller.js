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

  submit() {
    const email = this.emailTarget.value;
    const message = this.messageTarget.value;

    // Ajoutez ici la logique pour envoyer le formulaire (par exemple, une requête AJAX)
    console.log("Email:", email);
    console.log("Message:", message);

    // Réinitialiser les champs du formulaire
    this.emailTarget.value = "";
    this.messageTarget.value = "";

    this.toggleContactButtonVisibility();

    // Fermer la modal
    this.closeModal();
  }

  toggleContactButtonVisibility() {
    this.contactButtonTarget.classList.toggle("btn-contact-hidden");
  }
}

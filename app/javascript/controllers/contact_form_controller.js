// app/javascript/controllers/contact_form_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["modal", "email", "message"];

  connect() {
    console.log("hello contact");
  }

  openModal() {
    console.log(this.modalTarget);
    this.modalTarget.classList.toggle("is-active");
    console.log("open modal");
  }

  closeModal() {
    this.modalTarget.classList.remove("is-active");
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

    // Fermer la modal
    this.closeModal();
  }
}

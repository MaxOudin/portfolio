import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-menu"
export default class extends Controller {
  static targets = ['toggleable'];

  connect() {
    console.log('hello');
  }

  toggle() {
    console.log('target');
    this.toggleableTargets.forEach((target) => {
      target.classList.toggle('hidden');
    });
  }
}

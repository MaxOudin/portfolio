import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-menu"
export default class extends Controller {
  static targets = ['toggleable'];

  connect() {
    console.log('hello toggle');
  }

  toggle() {
    console.log(("toggle"));
    this.toggleableTargets.forEach((target) => {
      console.log(target);
      target.classList.toggle('hidden-nav');
    });
  }
}

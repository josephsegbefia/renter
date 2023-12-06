import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shop"
export default class extends Controller {
  static targets = ["modal"];
  connect() {
  }

  openModal() {
    this.modalTarget.classList.add("is-active");
    this.modalTarget.classList.remove("fade");
  }

  closeModal() {
    console.log("triggered")
    this.modalTarget.classList.remove("is-active");
    this.modalTarget.classList.add("fade");
  }
}

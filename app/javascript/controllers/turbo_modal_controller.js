import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  hideModal() {
    this.element.parentElement.removeAttribute("src")
    this.element.remove()
  }

  // hide modal on successful form submission
  // action: "turbo:submit-end->turbo-modal#submitEnd"
  submitEnd(e) {
    if (e.detail.success) {
      this.hideModal()
    }
  }

  // hide modal when clicking ESC
  // action: "keyup@window->turbo-modal#closeWithKeyboard"
  closeWithKeyboard(e) {
    if (e.code == "Escape") {
      this.hideModal()
    }
  }
}

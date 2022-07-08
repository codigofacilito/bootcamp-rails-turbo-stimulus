import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="numbers"
export default class extends Controller {
  connect() {
    console.log("Hello");
    this.index = parseInt(this.element.dataset.index);
  }

  add(){
    
    // Turbo.visit(`/phone_numbers/new.turbo?index=${this.index}`);
    fetch(`/phone_numbers/new?index=${this.index}`, {
      headers: {
        Accept: "text/vnd.turbo-stream.html",
      },
    })
    .then(r => r.text())
    .then(html => Turbo.renderStreamMessage(html));

    this.index = this.index + 1;
  }
}

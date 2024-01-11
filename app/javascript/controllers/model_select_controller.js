import { Controller } from "@hotwired/stimulus";
import { get } from '@rails/request.js';

export default class extends Controller {
  change(event) {
    let modelId = event.target.selectedOptions[0].value;

    get(`/models/${modelId}`, {
      responseKind: "turbo-stream",
        headers: {
          "Content-Type": "application/json",
    "X-CSRF-Token": document.querySelector("meta[name=csrf-token]").content
  }
    })
  }
}

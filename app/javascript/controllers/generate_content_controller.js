import { Controller } from "@hotwired/stimulus"
import { get } from '@rails/request.js'

export default class extends Controller {
  submit() {
		// Change to submit later on when the form is in place
		get(`/results/text`, {
			responseKind: "turbo-stream",
			headers: {
				"Content-Type": "application/json",
				"X-CSRF-Token": document.querySelector("meta[name=csrf-token]").content
			}
		})
  }
}

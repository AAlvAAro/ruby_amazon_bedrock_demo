import { Controller } from "@hotwired/stimulus";
import { get } from '@rails/request.js'

export default class extends Controller {
	static targets = ["select"]

	change(event) {
		// console.log("change", this.selectTarget.value);
		let providerId = event.target.selectedOptions[0].value;
		console.log(providerId);

		get(`/model_providers/${providerId}/models`, {
			responseKind: "turbo-stream",
			headers: {
				"Content-Type": "application/json",
				"X-CSRF-Token": document.querySelector("meta[name=csrf-token]").content
			}
		})
	}
}
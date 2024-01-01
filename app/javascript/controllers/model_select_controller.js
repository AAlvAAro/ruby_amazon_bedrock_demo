import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
	static targets = ["select"]

	change() {
		console.log("change", this.selectTarget.value);
	}
}
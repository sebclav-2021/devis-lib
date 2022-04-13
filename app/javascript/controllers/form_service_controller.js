import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "plus" ]

  connect() {
    console.log('Hello, Stimulus!')
  }
  displayForm() {
    this.formTarget.classList.toggle("d-none")
    // console.log(this.plusTarget.className)
    this.plusTarget.className.includes("fa-minus") ? this.plusTarget.className ="fa-solid fa-plus" : this.plusTarget.className ="fa-solid fa-minus"  }
}

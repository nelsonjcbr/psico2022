import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {

  static targets = ["guiaSelect"]

  change(event) {
    let paciente = event.target.selectedOptions[0].value
    let target = this.guiaSelectTarget.id

    get('/agendas/guias?target=$(target)&paciente=${paciente}', {
      responseKind: "turbo-stream"
    })
  }
}

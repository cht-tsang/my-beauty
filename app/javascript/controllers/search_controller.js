import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input" ]

  connect() {
    // console.log("hello stimulus!")
  }
  searchInput() {
    
    var field = this.inputTarget.value
    
    $.ajax({
      url: "/search_results",
      method: "GET",
      data: {
        query: field
      }
    });
  }
}
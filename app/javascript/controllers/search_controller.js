import Rails from '@rails/ujs';
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["input"]

  connect() {
    // console.log("hello stimulus!")
  }
  searchInput() {

    var field = this.inputTarget.value

    Rails.ajax({
      url: `/search_results?query=${this.inputTarget.value}`,
      type: "GET",
      // data: {
      //   query: field
      // }
    });
  }
}
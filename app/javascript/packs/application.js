// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("slick-carousel")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

// import Rails from "rails-ujs";


// import { search } from "../library/search";
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

import { initAutocomplete } from '../plugins/init_autocomplete';
import { initAutocomplete2 } from '../plugins/init_autocomplete';
import { initAutocomplete3 } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';

import 'slick-carousel';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';

import { initStarRating } from '../plugins/init_star_rating';


const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  // search();
  // flatpickr("#booking-date", {
  //   altInput: true,
  //   altFormat: "F j, Y",
  //   dateFormat: "Y-m-d"
  // })
  initAutocomplete();
  initAutocomplete2();
  initAutocomplete3();
  initMapbox();
  $('.scroller').slick({
    autoplay: true,
    centerMode: true
  });
  initStarRating();
});


// import "controllers"


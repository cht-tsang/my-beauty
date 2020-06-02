import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('your-postcode');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocomplete2 = () => {
  const addressInput = document.getElementById('beautician_location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocomplete3 = () => {
  const addressInput = document.getElementById('booking_location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
export { initAutocomplete2 };
export { initAutocomplete3 };
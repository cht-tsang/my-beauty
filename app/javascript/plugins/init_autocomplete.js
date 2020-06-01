import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('your-postcode');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
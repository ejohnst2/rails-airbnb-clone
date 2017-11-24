function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  var bunkerAddress = document.getElementById('bunker_address');
  bunkerAddress.blur();
  bunkerAddress.value = components.address;

  document.getElementById('bunker_zip_code').value = components.zip_code;
  document.getElementById('bunker_city').value = components.city;

  if (components.country_code) {
    var selector = '#bunker_country option[value="' + components.country_code + '"]';
    document.querySelector(selector).selected = true;
  }
}

function getAddressComponents(place) {
  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;

  console.log(place.address_components);

  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type === 'street_number') {
        street_number = component.long_name;
      } else if (type === 'route') {
        route = component.long_name;
      } else if (type === 'postal_code') {
        zip_code = component.long_name;
      } else if (type === 'locality') {
        city = component.long_name;
      } else if (type === 'postal_town' && city === null) {
        city = component.long_name;
      } else if (type === 'country') {
        country_code = component.short_name;
      }
    }
  }

  return {
    address: street_number === null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code
  };
}

document.addEventListener("DOMContentLoaded", function() {
  var bunkerAddress = document.getElementById('bunker_address');

  if (bunkerAddress) {
    var autocomplete = new google.maps.places.Autocomplete(bunkerAddress, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(bunkerAddress, 'keydown', function(e) {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

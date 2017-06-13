var googleMap = {
  init: function() {
    var self = this;
    var geocoder = new google.maps.Geocoder();
    var address = $('.restaurant_address').val();;
    self.geocode(geocoder, address);
  },
  geocode: function(geocoder, address) {
    var self = this;
    geocoder.geocode({
      'address': address
    }, function(result, status) {
      self.geocodeCallback(result, status)
    });
  },
  geocodeCallback: function(result, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      var latlng = result[0].geometry.location;
      var options = {
        // zoom: 17,
        center: latlng,
        mapTypeId: 'roadmap'
      };
      var map = new google.maps.Map(document.getElementById('map'), options);
      // var marker = new google.maps.Marker({
      //     position: latlng,
      //     map: map
      //   });
    }
    else {
      alert('エラーです！');
    }
  }
}

var googleMap = {
  init: function() {
    var self = this;
    var geocoder = new google.maps.Geocoder();
    var address = '東京都目黒区下目黒';
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
        zoom: 15,
        center: latlng,
        mapTypeId: 'roadmap'
      };
      var map = new google.maps.Map(document.getElementById('map'), options);
    } else {
      alert('エラーです！');
    }
  }
}

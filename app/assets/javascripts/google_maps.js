  // var lat_lang = <%= Geocoder.coordinates(@search_city_state) %>;
  // var markers = [];
  // var map;
  //
  // function initMap() {
  //   map = new google.maps.Map(document.getElementById('map'), {
  //     zoom: 13,
  //     center: new google.maps.LatLng(lat_lang[0], lat_lang[1]),
  //     mapTypeId: 'roadmap'
  //   });
  //
  //   var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
  //   var icons = {
  //     parking: {
  //       icon: iconBase + 'parking_lot_maps.png'
  //     },
  //     library: {
  //       icon: iconBase + 'library_maps.png'
  //     },
  //     info: {
  //       icon: iconBase + 'info-i_maps.png'
  //     },
  //     programmerMan: {
  //       icon: '/assets/programmercopy.png'
  //     }
  //   };
  //
  //   var features = [
  //     <% @results.each do |user| %>
  //       <% lat = user.lat_lang.split(/,/)[0] %>
  //       <% lang = user.lat_lang.split(/,/)[1] %>
  //       {
  //         position: new google.maps.LatLng(<%= lat %>, <%= lang %>),
  //         type: 'programmerMan',
  //       },
  //     <% end %>
  //   ];
  //
  //   // Create markers.
  //   // features.forEach(function(feature) {
  //   //   var marker = new google.maps.Marker({
  //   //     position: feature.position,
  //   //     draggable: false,
  //   //     animation: google.maps.Animation.DROP,
  //   //     icon: icons[feature.type].icon,
  //   //     map: map
  //   //   });
  //   // });
  //
  //   function addMarkerWithTimeout(position, timeout) {
  //       window.setTimeout(function() {
  //         markers.push(new google.maps.Marker({
  //           position: position,
  //           map: map,
  //           icon: icons[feature.type].icon,
  //           animation: google.maps.Animation.DROP
  //         }));
  //       }, timeout);
  //     }
  //
  //   function drop() {
  //     clearMarkers();
  //     for (var i = 0; i < features.length; i++) {
  //       addMarkerWithTimeout(features[i], i * 200);
  //     }
  //   }
  //
  //   function clearMarkers() {
  //       for (var i = 0; i < markers.length; i++) {
  //         markers[i].setMap(null);
  //       }
  //       markers = [];
  //     }
  //   drop();
  //   marker.addListener('click', toggleBounce);
  // }


  // function toggleBounce() {
  //   if (marker.getAnimation() !== null) {
  //     marker.setAnimation(null);
  //   } else {
  //     marker.setAnimation(google.maps.Animation.BOUNCE);
  //   }
  // }

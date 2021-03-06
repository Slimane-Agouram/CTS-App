﻿//function initCall() {
//    alert('Google maps api initialized.');
//    angular.bootstrap(document.getElementById('map'), ['app.ui-map']);
//}

var Myapp = angular.module('app.ui-map', ['ui.map']);
  Myapp.controller('MapCtrl', ['$scope', function ($scope) {

      $scope.myMarkers = [];
      

      $scope.mapOptions = {
          center: new google.maps.LatLng(48.538, 7.750),
          zoom: 11,
          mapTypeId: google.maps.MapTypeId.ROADMAP
      };

      $scope.addMarker = function ($event, $params) {
          $scope.myMarkers.push(new google.maps.Marker({
              map: $scope.myMap,
              position: $params[0].latLng
          }));
      };

      $scope.setZoomMessage = function (zoom) {
          $scope.zoomMessage = 'Zoom: ' + zoom + '!';
          console.log(zoom, 'zoomed');
      };

      $scope.openMarkerInfo = function (marker) {
          $scope.currentMarker = marker;
          $scope.currentMarkerLat = marker.getPosition().lat();
          $scope.currentMarkerLng = marker.getPosition().lng();
          $scope.myInfoWindow.open($scope.myMap, marker);
      };

      $scope.setMarkerPosition = function (marker, lat, lng) {
          marker.setPosition(new google.maps.LatLng(lat, lng));
      };

      $scope.check = function() {
          alert($scope.test);
      };
  }])
;
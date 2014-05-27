<%@ Page Title="" Language="C#" MasterPageFile="~/Views/CTS-App.Master" AutoEventWireup="true" CodeBehind="MapPage.aspx.cs" Inherits="CTS_App.Views.MapPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<%--    <script src="../Scripts/MyMap.js"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <br/>
     

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&callback=onGoogleReady"></script>
<script>
    function onGoogleReady() {
        angular.bootstrap(document.getElementById("map"), ['app.ui-map']);

    }
</script>
    <script src="../Scripts/MyMap.js"></script>
    <div ng-app="Myapp">
        
    <section  id="map" ng-cloak>
  <div class="jumbotron">
    <h2>Google Maps</h2>
  </div>
  <div class="well"  ng-controller="MapCtrl">
    <div class="row">
      <div class="col-md-3">
        <h4>Cliquer pour ajouter un marqueur</h4>
        <p>{{zoomMessage}}</p>
        <ul class="list-unstyled">
          <li ng-repeat="marker in myMarkers">
            <a class="btn btn-default" ng-click="myMap.panTo(marker.getPosition())">
              Aller au marqueur {{$index}}
            </a>
          </li>
        </ul>

       
        <div ng-repeat="marker in myMarkers" ui-map-marker="myMarkers[$index]"
             ui-event="{'map-click': 'openMarkerInfo(marker)'}">
        </div>

        <div ui-map-info-window="myInfoWindow">
          <h1>Marker</h1>
          Lat: <input ng-model="currentMarkerLat">, Lng: <input ng-model="currentMarkerLng">
          <a class="btn btn-primary" ng-click="setMarkerPosition(currentMarker, currentMarkerLat, currentMarkerLng)">Set Position</a>
        </div>
      </div>

     
         
      <div id="map_canvas" ui-map="myMap" class="col-md-8 map"
           ui-event="{'map-click': 'addMarker($event, $params)', 'map-zoom_changed': 'setZoomMessage(myMap.getZoom())' }"
           ui-options="mapOptions">
      </div>
         <Style>
.map {
  height: 400px;
  width: 600px;
  margin: auto;
}
                </Style>
    </div>
  </div>
        </section>
        <table class="table table-striped" ng-controller="MapCtrl">
            <tr>
                <td>Ligne:</td>
                <td><input type="text" data-ng-model="test"/></td>
                
            </tr>
            <tr>
                <td>Véhicule</td>
                <td><input type="text"/></td>
            </tr>
            <tr>
                <td>date de début:</td>
                <td><input type="date" id="datedebut"/></td>
            </tr>
            <tr>
                <td>date de fin:</td>
                <td><input type="date" /></td>

            </tr>
            <tr>
                <td></td>
                <td><button class="btn btn-primary" ng-click="check()" onclick="return false;">Valider</button></td>
            </tr>
        </table>
    </div>

</asp:Content>

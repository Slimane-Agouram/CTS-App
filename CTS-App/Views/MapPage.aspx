<%@ Page Title="" Language="C#" MasterPageFile="~/Views/CTS-App.Master" AutoEventWireup="true" CodeBehind="MapPage.aspx.cs" Inherits="CTS_App.Views.MapPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div ng-app="app"  ng-data-controller="MapCtrl">
                <script>
                    var myAppModule = angular.module('MyApp', ['ui.map']);
                    myAppModule.controller('MapCtrl', ['$scope', function ($scope) {
                        $scope.mapOptions = {
                            center: new google.maps.LatLng(35.784, -78.670),
                            zoom: 15,
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                    }]);
                </script>
                <section id="map" ng-controller="MapCtrl" >
  <div ui-map="myMap" ui-options="mapOptions" class="map-canvas"></div>
</section>
                <Style>
                    .map-canvas { height: 400px; }

                </Style>
            </div>
    

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&callback=onGoogleReady"></script>
    <script>
        function onGoogleReady() {
            alert("ready");
            angular.bootstrap(document.getElementById("map"), ['app']);
        }
</script>
</asp:Content>

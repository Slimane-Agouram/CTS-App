<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Title</title>
         <script src="../Scripts/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="../Scripts/angular.js"></script>
    <script src="../Scripts/event.js"></script>
    <script src="../Scripts/underscore.js"></script>
    <script src="../Scripts/ui-map.js" type="text/javascript"></script>
        
    </head>
    <body>
        <form id="HtmlForm" runat="server">
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
        </form>
    </body>
    
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&callback=onGoogleReady"></script>
    <script>
        function onGoogleReady() {
            alert("ready");
            angular.bootstrap(document.getElementById("map"), ['MyApp']);
        }
</script>
          
</html>

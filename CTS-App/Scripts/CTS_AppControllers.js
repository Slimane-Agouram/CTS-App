
//function initCall() {
//    alert("Google maps api initialized.");
//    angular.bootstrap(document.getElementById("map"), ['app.ui-map']);
//}
////////////////ANGULAR/////////////////////////

var CTS_AppControllers = angular.module('CTS_AppControllers', ['angularCharts', 'ui.map']);

CTS_AppControllers.controller('ResultatController', ['$scope','$http','$timeout', function($scope,$http,$timeout) {

   


    $timeout(function () {
            $scope.data = {
                series: [],
                data: []
            };
            $scope.temp={
                series: [],
                data: []
            };

             $scope.temp2={
                series: [],
                data: []
            };

            $scope.data2 = {
                series: [],
                data: []
            };

        }, 100);


    


    $scope.showGraphLine=true;
    $scope.showGraphCircle=false;
    $scope.showVariable =false;
    $scope.Lineshow=true;
    $scope.Circleshow=false;

    //graph data : 
    $scope.chartType = 'line';
    $scope.chartType2 = 'pie';


$scope.nomGraphe1 = "Graphe Ligne";
 $scope.nomGraphe2 = "Graphe Cercle";

     $scope.config = {
            labels: true,
            title: $scope.nomGraphe1,
            legend: {
                display: true,
                position: 'left'
            },
            innerRadius: 0
        };

         $scope.config2 = {
            labels: true,
            title: $scope.nomGraphe2,
            legend: {
                display: true,
                position: 'left'
            },
            innerRadius: 0,
            linelegend:"traditional"
        };


    $scope.Visualiser = function() {

        $scope.showVariable = true;

    };

    $scope.displayLine = function() {
        $scope.showGraphCircle = false;
        $scope.showGraphLine = true;
        $scope.Lineshow = true;
        $scope.Circleshow = false;
    };

    $scope.displayCircle = function() {
        $scope.showGraphCircle = true;
        $scope.showGraphLine = false;
        $scope.Lineshow = false;
        $scope.Circleshow = true;

    };

    $scope.recieveData = function () {
        
        $http.get('../api/Cts').success(function(data){
            for (var i = data.data.length - 1; i >= 0; i--) {
                if (data.data[i]===null) {
                    data.data.splice(i,1);
                }
                alert(JSON.stringify(data));
                $scope.temp=data;
            }

        });


    };

    $scope.sendRecieve = function() {
        if ($scope.ligne == null || $scope.ligne == "" || $scope.dateDebut == null || $scope.dateFin == "" || $scope.dateFin == null || $scope.dateFin == "" || $scope.vehicule ==""||$scope.vehicule==null) {
            alert("Merci de spécifier tous les champs!");

        } else {
            //            var dateDep = Date.parse($scope.dateDebut);
//            var p1 = $scope.dateDebut.split('/');
//            var dateDep = new Date(p1[0], p1[1], p1[2]);
//            var p2 = $scope.dateFin.split('/');
//
//            var dateFin =new Date(p2[0], p2[1], p2[2]);
          
            
   
            var d1 = $scope.dateDebut.split('/');
            var d2 = $scope.dateFin.split('/');
            var db1 = new Date(d1[2], d1[1]-1, d1[0]);
            var db2 = new Date(d2[2], d2[1]-1, d2[0]);


            alert("1:" + db1 + " 2:" + db2);


            
            if (db1 > db2) {
                alert("merci d'entrer un interval valide!");
            } else {
                $http.get('../api/Cts/getGraph?dateDebut=' + $scope.dateDebut + '&dateFin=' + $scope.dateFin + '&ligne=' + $scope.ligne+'&vehicule=' + $scope.vehicule ).success(function(data) {
                    for (var i = data.data.length - 1; i >= 0; i--) {
                        if (data.data[i] === null) {
                            data.data.splice(i, 1);
                        }
//                        alert(JSON.stringify(data));
                        $scope.data = data;
                        $scope.showVariable = true;

                    }


                });

            }

        }
    };
}]);

//var myAppModule = angular.module('app.ui-map', ['ui.map']);
//myAppModule.controller('MapCtrl', ['$scope', '$http', function ($scope, $http) {
//
//    
//    $scope.myMarkers = [];
//
//    $scope.map = {
//        center: {
//            latitude: 45,
//            longitude: -73
//        },
//        zoom: 8
//    };
//
//    $scope.mapOptions = {
//        center: new google.maps.LatLng(35.784, -78.670),
//        zoom: 15,
//        mapTypeId: google.maps.MapTypeId.ROADMAP
//    };
//    
//}]);
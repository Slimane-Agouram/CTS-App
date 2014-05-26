
//////////////ANGULAR/////////////////////////

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

//            $scope.data = {
//			series: ['Sales', 'Income', 'Expense', 'Laptops', 'Keyboards'],
//			data : [{
//				x : "Sales",
//				y: [100,500, 0],
//				tooltip:"this is tooltip"
//			},
//			{
//				x : "Not Sales",
//				y: [300, 100, 100]
//			},
//			{
//				x : "Tax",
//				y: [351]
//			},
//			{
//				x : "Not Tax",
//				y: [54, 0, 879]
//			}]     
//		};

            

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
            var dateDep = Date.parse($scope.dateDebut);
            alert("Date debut: " + dateDep +"\n date fin: " + dateFin);
            
            var dateFin = Date.parse($scope.dateFin);
            if (dateDep > dateFin) {
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

CTS_AppControllers.controller('MapCtrl', ['$scope', function ($scope) {
    $scope.mapOptions = {
        center: new google.maps.LatLng( 35.784, -78.670),
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    alert('in google map');
}]);


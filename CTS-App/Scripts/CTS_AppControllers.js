var CTS_AppControllers = angular.module('CTS_AppControllers', []);
CTS_AppControllers.controller('AjoutFichierController', ['$scope', function($scope) {
    var fichiers = [{ id: 10, nom: 'Slimane' }, { id: 12 , nom: 'Youssef' }, { id: 13 , nom:'Spoofy' }];
    $scope.fichiers = fichiers;
}
]);
CTS_AppControllers.controller('DiagnosticController', ['$scope', function($scope) {
    var vehicules = [{ id: 0, ref: 1234 }, { id: 0, ref: 1245 }, { id: 50, ref: 2434 }, { id: 10, ref: 8274 }, { id: 9, ref: 3456 }, { id: 5, ref: 786 }, { id: 90, ref: 457 }];
    $scope.vehicules = vehicules;
}]);

CTS_AppControllers.controller('ResultatsController', ['$scope', function($scope) {
    var results = [];
    $scope.results = results;
}])
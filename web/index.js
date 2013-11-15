/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module("app", []);

app.controller("IndexCtrl", function($scope,$http) {
    $scope.idEntidadBancaria = null;
    $scope.entidadBancaria = null;
    $scope.entidadesBancarias = [];

    $scope.readEntidadBancaria = function() {
        $http.get("entidadBancaria.json.jsp").success(function(result) {
            $scope.entidadBancaria = result;
        })
    }

    $scope.readEntidadesBancarias = function() {
        $http.get("entidadesBancarias.json.jsp").success(function(result) {
            $scope.entidadesBancarias = result;
        })
    }
});



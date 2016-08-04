function SystemCtrl($scope, $rootScope) {
    'use strict';

    console.log("System Controller Running...");
    $scope.data = "System";
    $scope.selectedTab = 1;
    
    $scope.selectTab = function (navItemId) {
        $scope.selectedTab = navItemId;
    };

}
SystemCtrl.$inject = ['$scope', '$rootScope'];
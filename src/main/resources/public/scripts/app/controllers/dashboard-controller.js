function DashboardCtrl($scope, $rootScope, dashboardService) {
    'use strict';

    $scope.PageTitle = "Dashboard";
    
    var dashboardItemsStorage =  localStorage.getItem('dashboardItems');

    if (dashboardItemsStorage) {
        $scope.dashboardItems = JSON.parse(dashboardItemsStorage);
    } else {
        $scope.dashboardItems = dashboardService.getDashboardItems();
        localStorage.setItem('dashboardItems', JSON.stringify($scope.dashboardItems));
    }
}
DashboardCtrl.$inject = ['$scope', '$rootScope', 'DashboardService'];
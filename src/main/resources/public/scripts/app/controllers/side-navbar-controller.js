function SideNavBarCtrl($scope, $rootScope, navbarService) {
    'use strict';

    console.log("SideNavBarCtrl Controller Running...");
    $scope.data = "SideNavBarCtrl";

    var navBarItemsStorage = localStorage.getItem('navBarItems');
    
    if (navBarItemsStorage) {
        $scope.navBarItems = JSON.parse(navBarItemsStorage);
    } else {
        $scope.navBarItems = navbarService.getNavBarItems();
        localStorage.setItem('navBarItems',JSON.stringify($scope.navBarItems));
    }
}
SideNavBarCtrl.$inject = ['$scope', '$rootScope', 'NavbarService'];
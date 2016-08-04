app.config(function ($routeProvider) {

    $routeProvider.when("/", { templateUrl: "", controller: SystemCtrl }).
                   when("/profile", { templateUrl: "/partials/public/profile.html" }).
                   when("/system", { templateUrl: "/partials/public/system.html", controller: SystemCtrl }).
                   otherwise({ redirectTo: '/' });

});

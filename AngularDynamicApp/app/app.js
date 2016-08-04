var AngularDynamicApp = angular.module('angulardynamic', ['ngRoute']);


var $routeProviderReference;

AngularDynamicApp.config(function ($routeProvider, $sceDelegateProvider) {
    $routeProviderReference = $routeProvider;
    $sceDelegateProvider.resourceUrlWhitelist(['**']);
});

AngularDynamicApp.run(['$route', '$http', '$rootScope',
    function ($route, $http, $rootScope) {
        $http.get("http://localhost:2103/api/routes/get-route").success(function (response) {
            var iLoop = 0, currentRoute;
            for (iLoop = 0; iLoop < response.data.length; iLoop++) {
                currentRoute = response.data[iLoop];
                var routeName = currentRoute.URL;
                $routeProviderReference.when(routeName, {
                    templateUrl: currentRoute.TemplateURL,
                    controller: currentRoute.Controller
                });
            }
            $route.reload();
        });
    }]);
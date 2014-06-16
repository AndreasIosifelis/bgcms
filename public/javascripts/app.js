var MZdeps = [
    'ngRoute'
],
        MZ = angular.module("MZ", MZdeps);

MZ.config(['$routeProvider', function($routeProvider) {

        $routeProvider.
                when("/", {templateUrl: "public/templates/page/page.html"}).
                when("/page/:page", {templateUrl: "public/templates/page/page.html"}).
                when("/blog", {templateUrl: "public/templates/blog/list.html"}).
                when("/user/login", {templateUrl: "public/templates/user/login.html"}).
                when("/products", {templateUrl: "public/templates/product/list.html"}).
                when("/products/:id", {templateUrl: "public/templates/product/list.html"}).
                //Admin
                when("/admin/panel", {templateUrl: "public/templates/admin/panel.html"}).
                //Admin
                otherwise({redirectTo: "/"});

    }]);



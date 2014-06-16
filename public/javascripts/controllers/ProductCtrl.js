CMS.controller("ProductCtrl", ['$scope', '$rootScope', '$routeParams', function($scope, $rootScope, $routeParams){
        
       $rootScope.selectedPage = "product";
       
       
       console.log($routeParams);
       $scope.catId = $routeParams.id;
       
       
       
       
        
}]);



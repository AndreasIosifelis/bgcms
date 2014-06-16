MZ.controller("UserCtrl", ['$location', '$routeParams','$util','$api','$user','$rootScope','$scope', function($location, $routeParams, $util, $api, $user, $rootScope, $scope){       

       $scope.success = false;
       $scope.errors = [];
        
        $scope.doLogin = function(){
            $api.ajax("user/login", {
                username: $util.hash("SHA512", $scope.loginUsername),
                password: $util.hash("SHA512", $scope.loginPassword)
            }, 
            function(data){
                $scope.success = data.success;
                $scope.messages = data.messages;
                if(data.success){                    
                    $rootScope.userInfo = data.userInfo; 
                    $location.path("page/home");
                }
                
            });                        
        };
        
        
        $scope.logout = function($event){
            $event.preventDefault();
            $api.ajax("user/logout", {}, function(data){
                if(data.success){
                    $rootScope.userInfo = data.userInfo;
                    $location.path("page/home");
                }              
                
            });            
            
        };
        
        
        
        $scope.SetLocale = $user.SetLocale;       
        $user.SetLocale($rootScope.langId);
        
        
        
}]);



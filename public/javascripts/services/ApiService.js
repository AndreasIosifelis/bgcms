CMS.factory("$api", ["$util", "$http", "$rootScope", function($util, $http, $rootScope){
    
    $rootScope.$on("LOAD", function(){ $rootScope.loading=true });
    $rootScope.$on("UNLOAD", function(){ $rootScope.loading=false });
    
   
    
    return {
        ajax: function(url, params, callBack){
            
            url = url.split("/");

            var path = window.location.href;
            path = path.split("#")[0];
            path = path + "?c={ctrl}&m={fnc}";
            path = path.replace(/{ctrl}/, url[0]);
            path = path.replace(/{fnc}/, url[1]);

            params["sessionId"] = $rootScope.userInfo.sessionId;
            params["userToken"] = $util.isEmpty($rootScope.userInfo.userToken) ? "" : $rootScope.userInfo.userToken;
            
             $rootScope.$emit('LOAD');
            
            var xhr = $http({
                method: "POST",
                url: path,
                data: params,
                responseType: "json",
                headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
            });
            
            xhr.success(function(data){
                callBack(data);
                 $rootScope.$emit('UNLOAD');
            });
            
            xhr.error(function(){
                console.log("Server Error!");
            });
            
            return xhr;
            
        }
    };
    
    
}]);



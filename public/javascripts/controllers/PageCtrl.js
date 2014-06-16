CMS.controller("PageCtrl", ['$api', '$scope', '$rootScope', '$routeParams', function($api, $scope, $rootScope, $routeParams) {

        
        var data ={
            page : $routeParams.page == undefined ? "home" : $routeParams.page
        };
        
        $api.ajax("site/page", {
            page: $routeParams.page ? $routeParams.page : "home"
        }, 
        function(data) {
            $rootScope.selectedPage = $routeParams.page == undefined ? "home" : $routeParams.page;
            $rootScope.pageTitle = data.page.pageTitle;
            $rootScope.pageContent = data.page.pageContent;
        });


    }]);



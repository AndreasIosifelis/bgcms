<!DOCTYPE html>
<html ng-app="CMS">
    <head>
        <meta charset="utf-8">
        <title>{{pageTitle}}</title>
        <!-- Styles -->
        <?= css(base_url("public/stylesheets/bootstrap.min.css")) ?>
        <?= css(base_url("public/stylesheets/bootstrap-theme.min.css")) ?>
        <?= css(base_url("public/stylesheets/main.css")) ?>
        <!-- Styles -->


        <!-- Libs -->
        <?= js(base_url("public/javascripts/libs/jquery.min.js")) ?>
        <?= js(base_url("public/javascripts/libs/bootstrap.min.js")) ?>
        <?= js(base_url("public/javascripts/libs/crypto.min.js")) ?>
        <?= js(base_url("public/javascripts/angular/angular.min.js")) ?>
        <?= js(base_url("public/javascripts/angular/angular-route.min.js")) ?>
        <?= js(base_url("public/javascripts/angular/i18n/angular-locale_el-gr.js")) ?>
        <!-- Libs -->


        <!-- Config -->
        <?= js(base_url("public/javascripts/app.js")) ?>
        <!-- Config -->


        <!-- Services -->
        <?= js(base_url("public/javascripts/services/LocalizerService.js")) ?>
        <?= js(base_url("public/javascripts/services/ApiService.js")) ?>
        <?= js(base_url("public/javascripts/services/UserService.js")) ?>
        <?= js(base_url("public/javascripts/services/UtilService.js")) ?>
        <!-- Services -->

        <!-- Controllers -->
        <?= js(base_url("public/javascripts/controllers/UserCtrl.js")) ?>
        <?= js(base_url("public/javascripts/controllers/PageCtrl.js")) ?>
        <?= js(base_url("public/javascripts/controllers/AdminCtrl.js")) ?>
        <!-- Controllers -->

    </head>
    <body>
        <div class="mg-mask" ng-show="loading"></div> 
        <input type='hidden' id='ApplicationUserInfo' value='<?=  json_encode($userInfo)?>' />
        
    <ng-include src="'public/templates/ui/mainMenu.html'" >
    </ng-include>

        <div class="container">
            <div class="row">
                <div class="col-md-12" ng-view></div>
            </div>
        </div>

    </body>
</html>
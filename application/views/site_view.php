<!DOCTYPE html>
<html ng-app="MZ">
    <head>
        <meta charset="utf-8">
        <title>JS Bin</title>
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
        <?= js(base_url("public/javascripts/controllers/ProductCtrl.js")) ?>
        <?= js(base_url("public/javascripts/controllers/AdminCtrl.js")) ?>
        <!-- Controllers -->

    </head>
    <body>
        <div class="mg-mask" ng-show="loading"></div>       
        <nav class="navbar navbar-inverse" role="navigation" ng-controller="UserCtrl">
            <input type="hidden" id="ApplicationSessionId" value="<?= $sessionId ?>" />
            <input type="hidden" id="ApplicationLoggedIn" value="<?= $loggedIn ?>" />
            <input type="hidden" id="ApplicationIsAdmin" value="<?= $isAdmin ?>" />
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">MZ</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li ng-class="(selectedPage=='home') ? 'active' : ''"><a href="#page/home">{{HOME}}</a></li>
                        <li ng-class="(selectedPage == 'blog' ? 'active': ''
                                )"><a href="#/blog">{{BLOG}}</a></li>
                        <li class="dropdown">
                            <a href="#">{{ABOUT}}<b class="caret"></b></a>
                            <ul class="dropdown-menu sub-menu">
                                <li ng-class="(selectedPage=='profile') ? 'active' : ''"><a href="#/page/profile">{{PROFILE}}</a></li>
                                <li ng-class="(selectedPage=='terms') ? 'active' : ''"><a href="#/page/terms">{{TERMS}}</a></li>
                                <li ng-class="(selectedPage=='contact') ? 'active' : ''"><a href="#/page/contact">{{CONTACT}}</a></li>
                            </ul>
                        </li>
                        <li ng-class="(selectedPage == 'products' ? 'active': 'dropdown'
                                )" class="dropdown">
                            <a href="#/products" class='dropdown-toggle' data-toggle='dropdown'>{{PRODUCTS}}<b class="caret"></b></a>
                            <ul class="dropdown-menu sub-menu">                                
                                <li><a href="#/products/45">Cat 45</a></li>
                                <li><a href="#/products/46">Cat 46</a></li>
                                <li><a href="#/products/47">Cat 47</a></li>
                                <li><a href="#/products/48">Cat 48</a></li>                                
                            </ul>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#/cart">{{CART}}</a></li>
                        <li ng-show="userInfo.loggedIn && userInfo.isAdmin"><a href="#/admin/panel">{{ADMINISTRATION}}</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">{{MY_ACCOUNT}}<b class="caret"></b></a>
                            <ul class="dropdown-menu">                                
                                <li><a href="#/user/login" ng-show="!userInfo.loggedIn">{{LOGIN}}</a></li>
                                <li><a href="#/user/register" ng-show="!userInfo.loggedIn">{{REGISTER}}</a></li>
                                <li><a href="#/user/profile" ng-show="userInfo.loggedIn">{{PROFILE}}</a></li>
                                <li><a href="#/user/logout" ng-show="userInfo.loggedIn" ng-click="logout($event)">Logout</a></li>
                            </ul>
                        </li>
                        <!--<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Language<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#" class="btn btn-info" ng-click="SetLocale('gr')">GR</a></li>
                                <li><a href="#" class="btn btn-info" ng-click="SetLocale('en')">EN</a></li>
                            </ul>
                        </li>-->

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>    


        <div class="container">
            <div class="row">
                <div class="col-md-12" ng-view></div>
            </div>
        </div>

    </body>
</html>
<?php

class Site_model extends CI_Model {

    private $pages = array(
        "home" =>array(
            "pageTitle"=> "Home",
            "pageContent"=>"Home Content"
        ),
        "about" =>array(
            "pageTitle"=> "About",
            "pageContent"=>"About Content"
        ),
        "terms" =>array(
            "pageTitle"=> "Terms",
            "pageContent"=>"Terms Content"
        ),
        "contact" =>array(
            "pageTitle"=> "Contact",
            "pageContent"=>"Contact Content"
        ),
        "profile" =>array(
            "pageTitle"=> "Profile",
            "pageContent"=>"Profile Content"
        )
    );
    
    public function getPage($page) {
        return $this->pages[$page];
    }

}

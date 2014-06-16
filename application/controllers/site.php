<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Site extends MZ_Controller {


    public function index() {
        $data["sessionId"] = $this->session->userdata("session_id");
        $data["loggedIn"] = $this->session->userdata("logged_in");
        $data["isAdmin"] = $this->session->userdata("is_admin");
        $this->load->view('site_view', $data);
    }
    
    
    public function page()
    {
        $this->authClient();
        $this->load->model("Site_model");
        $input = $this->request();              
        $response["success"] = true;       
        $response["page"] = $this->Site_model->getPage($input->page);        
        $this->response($response);               
    }

}


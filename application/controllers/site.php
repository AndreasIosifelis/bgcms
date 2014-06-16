<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Site extends MZ_Controller {


    public function index() {
        $data["userInfo"]["sessionId"] = $this->session->userdata("session_id");
        $data["userInfo"]["loggedIn"] = $this->session->userdata("logged_in");
        $data["userInfo"]["isAdmin"] = $this->session->userdata("is_admin");
        $data["userInfo"]["isEditor"] = $this->session->userdata("is_editor");
        $data["userInfo"]["isAuthor"] = $this->session->userdata("is_author");
        $data["userInfo"]["isCustomer"] = $this->session->userdata("is_customer");
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


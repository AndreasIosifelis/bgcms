<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User extends MZ_Controller {

    public function login() {
        $this->authClient();
        $username = $this->request()->username;
        $password = $this->request()->password;
        
        $this->load->model("User_model");
        $this->User_model->login($username, $password);
         if(empty($this->User_model->errors))
        {
            $response["success"] = true;
            $response["userInfo"] = array(
                "sessionId" => $this->session->userdata("session_id"),
                "langId" => $this->session->userdata("lang_id"),
                "loggedIn"=> $this->session->userdata("logged_in"),
                "isAdmin"=> $this->session->userdata("is_admin"),
                "userToken"=>$this->session->userdata("user_token"),
                "userId"=>$this->session->userdata("user_id")
            );
            $response["lookupInfo"] = "lookupInfo";
        }
        else
        {
            $response["success"] = false;
            $response["messages"] = $this->User_model->errors;
        }      
        
        $this->response($response);
        
    }
    
    
     public function logout(){
        $this->load->model("User_model");
        $this->User_model->logout();
        $response["success"] = TRUE;
        $response["userInfo"] = array();
        $response["userInfo"]["sessionId"] = $this->session->userdata("session_id");
        $response["userInfo"]["langId"] = $this->session->userdata("lang_id") ? $this->session->userdata("lang_id") : "en";
        $response["userInfo"]["loggedIn"] = $this->session->userdata("logged_in");
        $response["userInfo"]["isAdmin"] = $this->session->userdata("is_admin");
        $this->response($response);
     }

}

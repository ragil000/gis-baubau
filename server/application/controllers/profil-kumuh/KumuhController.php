<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class KumuhController extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
        $this->load->library('MyConfig');
        $this->load->helper(array('form', 'url'));
        $this->load->model('profil-kumuh/KumuhModel');
    }

    public function getData($page = 1, $api = true){
        $jumDataAll = 0;
        
		$status = TRUE;
		if($status){
            $search = '';
            if(@$this->input->post('search')){
                $search = $this->input->post('search');
            }
            $data = $this->KumuhModel->getAll($page, $search);

            $jumDataAll = $this->KumuhModel->getCount($search);
            $jumlahDatainPage = $this->KumuhModel->getJumlahInPage();
            $jumlahPage = ceil($jumDataAll/$jumlahDatainPage);
		}else{
            $data = array();
            $jumlahPage = 1;
        }
        
		$kirim = array(
            'jumlahAll' => $jumDataAll,
            'jumlahPage' => $jumlahPage,
			'data' => $data,
			'status' => $status
        );
        if($api)
            echo json_encode($kirim);
        else
            return json_encode($kirim);
    }

    public function getALLData(){
        $data = $this->KumuhModel->getAllData();
        echo json_encode($data);
    }
    
	public function action($action = '', $id = 0){
		
		$result = array(
			'pesan' => 'gagal terhubung server',
			'status' => false,
		);
		$status = True;
        if($status){
			$post = $this->input->post();
			if($id != null){
                $post['id_tb_kumuh'] = $id;
			}
            $result = $this->KumuhModel->$action($post);
        }
        $kirim = $result;
        echo json_encode($kirim);
    }
}

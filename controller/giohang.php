<?php 
class Controller
{
	protected $model;
	public function __construct(){
		require_once('./model/model.php');
		$this->model = new Model();
	}

	public function index(){
		$listdanhmuc = $this->model->getsDanhMuc();
		require_once('./view/giohang.php');
	}

	public function error(){
		require_once('./view/error.php');
	}
}
 ?>
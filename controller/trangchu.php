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
		$listsanpham = $this->model->getsSanPham();
		$listiphone = $this->model->getsIphone();
		$listsamsung = $this->model->getsSamsung();
		require_once('./view/trangchu.php');
	}

	public function user(){
		$listdanhmuc = $this->model->getsDanhMuc();
		$listsanpham = $this->model->getsSanPham();
		require_once('./view/user.php');
	}
}

 ?>
<?php require_once('./view/header_quanly.php') ?>
<h6 class="sidebar-heading d-flex justify-content-between align-items-center mt-4 mb-2 text-success" style="border-bottom: 1px dashed #ccc">
  <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
        <li class="breadcrumb-item active" aria-current="page">Quản lý</li>
      </ol>
    </nav>
</h6>
<!-- thong ke -->
<div class="row">
    <div class="col-12">
        <div class="card-deck m-0">
            <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                <div class="card-header">Danh mục
                    <div class="card-body-icon">
                        <i class="fas fa-list-ol"></i>
                    </div>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Số danh mục : 16</h5>
                    <p class="card-text">
                        <ul>
                            <li><a href="#" class="text-white">Danh sách</a></li>
                            <li><a href="#" class="text-white">Thêm danh mục</a></li>
                        </ul>
                    </p>
                </div>
            </div>
            <div class="card text-white bg-warning mb-3" style="max-width: 18rem;">
                <div class="card-header">Sản phẩm
                    <div class="card-body-icon">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Số sản phẩm : 16</h5>
                    <p class="card-text">
                        <ul>
                            <li><a href="#" class="text-white">Danh sách</a></li>
                            <li><a href="#" class="text-white">Thêm sản phẩm</a></li>
                        </ul>
                    </p>
                </div>
            </div>
            <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
                <div class="card-header">Hóa đơn
                    <div class="card-body-icon">
                        <i class="fas fa-clipboard"></i>
                    </div>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Số hóa đơn : 16</h5>
                    <p class="card-text">
                        <ul>
                            <li><a href="#" class="text-white">Danh sách</a></li>
                        </ul>
                    </p>
                </div>
            </div>
            <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                <div class="card-header">Người dùng
                    <div class="card-body-icon">
                        <i class="fas fa-users"></i>
                    </div>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Số người dùng : 16</h5>
                    <p class="card-text">
                        <ul>
                            <li><a href="#" class="text-white">Danh sách</a></li>
                        </ul>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end thong ke -->
<!-- binh luan moi -->
<div class="row">
    <div class="col-12">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- end binh luan -->
<?php require_once('./view/footer_quanly.php') ?>
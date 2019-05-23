<?php require_once('./view/header_quanly.php') ?>
<h6 class="sidebar-heading d-flex justify-content-between align-items-center mt-4 mb-2 text-success">
  <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="quanly.php">Quản lý</a></li>
        <li class="breadcrumb-item active" aria-current="page">Sản phẩm</li>
      </ol>
    </nav>
</h6>
<!-- quan ly san pham -->
<div class="row">
    <div class="col-12">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên sản phẩm</th>
                    <th scope="col">Số hóa đơn</th>
                    <th scope="col">Tác vụ</th>
                </tr>
            </thead>
            <tbody>
            	<?php $i=1;while($sanpham = $listsanpham->fetch_assoc()){ ?>
                <tr>
                    <th scope="row"><?php echo $i;$i++ ?></th>
                    <td><?php echo $sanpham['ten'] ?></td>
                    <td>10</td>
                    <td>
                        <a href="quanly.php?task=ssp&id=<?php echo $sanpham['id_sanpham'] ?>" class="btn btn-warning">Sửa</a>
                        <a href="quanly.php?task=xsp&id=<?php echo $sanpham['id_sanpham'] ?>" class="btn btn-danger">Xóa</a>
                    </td>
                </tr>
            	<?php } ?>
            </tbody>
        </table>
    </div>
</div>

<!-- end quan ly san pham -->
<?php require_once('./view/footer_quanly.php') ?>
-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2019 lúc 07:32 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webphukien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(10) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `anhdaidien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten`, `mota`, `anhdaidien`) VALUES
(1, 'Ốp lưng Iphone', 'Tổng hợp các dòng ốp lưng Iphone từ Iphone 5 đến Iphone XS Max', 'https://via.placeholder.com/70'),
(2, 'Cường lực Samsung', 'Tổng hợp các loại cường lực cho dòng điện thoại của hãng Samsung', 'https://via.placeholder.com/70'),
(3, 'Tai nghe Type-C', 'Tổng hợp các dòng tai nghe Type - c', 'https://via.placeholder.com/70'),
(4, 'aaaaaa', 'aaádsad', '12s1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(10) NOT NULL,
  `listidsanpham` varchar(255) NOT NULL,
  `listsoluongsanpham` varchar(500) NOT NULL,
  `tongtien` varchar(255) NOT NULL,
  `idthanhvien` int(10) NOT NULL,
  `ngaygiaohang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tinhtrang` tinyint(1) NOT NULL DEFAULT '0',
  `hoten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sodienthoai` varchar(15) NOT NULL,
  `diachi` text NOT NULL,
  `listmausac` varchar(255) NOT NULL,
  `phuongthuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `listidsanpham`, `listsoluongsanpham`, `tongtien`, `idthanhvien`, `ngaygiaohang`, `tinhtrang`, `hoten`, `email`, `sodienthoai`, `diachi`, `listmausac`, `phuongthuc`) VALUES
(3, '8|4', '2|1', '100', 1, '2019-05-22 17:00:00', 0, 'Nguyễn Tuấn Duy', 'ntduy.ttcb@gmail.com', '114', 'Tĩnh Túc - Cao Bằng ', 'trong suốt|trắng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(10) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `gia` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `anhdaidien` varchar(255) NOT NULL,
  `mausac` varchar(255) NOT NULL,
  `soluong` varchar(255) NOT NULL,
  `iddanhmuc` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `ten`, `gia`, `mota`, `anhdaidien`, `mausac`, `soluong`, `iddanhmuc`) VALUES
(1, 'Ốp Mirror Case iPhone 6 Plus - 6S Plus', '119000', 'Ốp Mirror Case iPhone 6 Plus – 6s Plus sẽ hô biến dế yêu của bạn thành một phụ kiện thời trang đẳng cấp, sang trọng và tinh tế, đồng thời vẫn đảm bảo tính năng bảo vệ hoàn hảo, mạnh mẽ.\r\n\r\n\r\nỐp Mirror Case iPhone 6 Plus – 6s Plus sở hữu vẻ đẹp sang trọng, hiện đại với toàn bộ bề mặt tráng gương sáng bóng vô cùng bắt mắt. Công nghệ tráng gương tiên tiến cùng lớp phủ nano dày hạn chế trầy xước giữ vẻ đẹp của sản phẩm được lâu bền hơn.\r\n\r\nM4.den.jpg\r\n\r\nChất liệu nhựa PC cứng cáp bảo vệ máy tốt hơn với thiết kế ôm sát mọi góc cạnh của máy, kể cả viền màn hình, tôn lên kiểu dáng nguyên bản của máy.\r\n\r\nM29529.jpg\r\n\r\nKết cấu 2 mảnh độc đáo với đường ghép phá cách ở ốp lưng mang lại vẻ đẹp mới lạ cho sản phẩm, giúp tháo lắp dễ dàng mà vẫn tạo nên một chỉnh thể chắc chắn.\r\n\r\n3746394000_834028716.jpg\r\n\r\nLưng ốp khoe logo táo khuyết đẳng cấp của iPhone tạo điểm nhấn nổi bật. Camera cũng được bảo vệ bằng các khoanh cắt chuẩn xác có gờ lồi tinh tế.\r\n\r\nbao-vệ-cam.jpg_product\r\n\r\nSản phẩm được hoàn thiện ở mức độ cao, từ cổng sạc, jack cắm đến từng lỗ loa nhỏ đều được để hở chuẩn xác, mịn đẹp không ảnh hưởng đến các hoạt động chức năng.\r\n\r\nbảo-vệ-36019.jpg\r\n\r\nKhi kết hợp với miếng dán cường lực vừa với khuôn màn hình, chiếc ốp sẽ tạo nên sự bảo vệ mạnh mẽ toàn diện 360 độ giúp bạn hoàn toàn an tâm mọi lúc, mọi nơi.\r\n\r\ncường-lực-9h75.jpg\r\n\r\nChiếc ốp sở hữu 5 màu đen, bạc, hường, gold, tiệp đều rất thời trang, tinh tế mang lại những phong cách khác nhau đáp ứng các sở thích phong phú của người dùng.\r\n\r\nmàu-đen9292.jpg\r\n\r\nMàu đen\r\n\r\nM4.bac.jpg\r\n\r\nMàu bạc\r\n\r\nM4.hong.jpg\r\n\r\nMàu hường\r\n\r\nM4.vang.jpg\r\n\r\nMàu gold\r\n\r\nmàu-xanh66.jpg\r\n\r\nMàu xanh dương\r\n\r\nLưu ý:Để giữ vẻ đẹp bóng bẩy của sản phẩm được lâu bền, bạn nên hạn chế để chung điện thoại với các vật cứng khác trong túi xách hoặc kéo lê trên mặt phẳng', 'https://gomhang.vn/images/stories/virtuemart/product/mirror-case-ava33.jpg', 'đen|trắng|vàng', '10', 1),
(2, 'Ốp siêu chống sốc UAG cho iPhone', '119', 'Ốp siêu chống sốc UAG cho iPhone là dòng ốp chống sốc khá mỏng gọn với thiết kế mạnh mẽ, đẳng cấp, mang lại sự bảo vệ hoàn hảo cho máy.\r\n\r\n\r\nỐp siêu chống sốc UAG cho iPhone mạnh mẽ từ thiết kế đến tính năng:\r\nKết cấu 5 lớp siêu bảo vệ với 2 thành phần: silicon chống sốc và khung nhựa PC chắc chắn.\r\n\r\nThiết kế tinh xảo mang phong cách nam tính mạnh mẽ.\r\n\r\nDọc viền ốp họa tiết lục lăng tỉ mỉ vừa lạ mắt vừa chống trơn trượt khi cầm máy.\r\n\r\nMàu sắc thời thượng, cá tính: đen, đỏ, bạc, vàng.\r\n\r\nDành cho các dòng máy iPhone 7-8-Plus-X-XS.\r\n\r\nChi tiết sản phẩm:\r\nỐp siêu chống sốc UAG cho iPhone mô phỏng thiết kế của hãng UAG rất được ưa chuộng tại Mỹ, mang lại phong cách mạnh mẽ, nam tính, vừa bảo vệ hoàn hảo cho máy vừa mang lại diện mạo mới đẳng cấp, khác biệt.\r\n\r\nop_lung_UAG_iPhone_X_m3.jpg\r\n\r\nKhả năng chống sốc tuyệt vời đến từ kết cấu 2 lớp bảo vệ kép: lớp silicon dẻo đàn hồi tốt bên trong và khung nhựa PC cứng cáp bên ngoài giữ form bền bỉ, chống bai dão.\r\n\r\nop_lung_UAG_iPhone_X_m4.jpg\r\n\r\nViền ốp thiết kế tỉ mỉ với họa tiết lục lăng vừa mang vẻ đẹp tinh xảo, lạ mắt vừa giúp cầm máy chắc tay, hạn chế trơn trượt tốt hơn.\r\n\r\nop_lung_UAG_iPhone_X_m5.jpg\r\n\r\nỐp ôm sát viền máy một cách vừa vặn cho khả năng chống chịu va đập tối đa, đồng thời tôn lên kiểu dáng của dòng máy bạn đang sử dụng.\r\n\r\nop_lung_UAG_iPhone_X_m2.jpg\r\n\r\nSản phẩm có các màu sắc thời thượng và cá tính: đen, đỏ, bạc, vàng cho bạn lựa chọn.\r\n\r\nop_lung_UAG_iPhone_X_m3.jpg\r\n\r\nMàu đen\r\n\r\nop_lung_UAG_iPhone_X_m1 do.jpg\r\n\r\nMàu đỏ\r\n\r\nop_lung_UAG_iPhone_X_m1 bac.jpg\r\n\r\nMàu bạc\r\n\r\nop_lung_UAG_iPhone_X_m1 champagne.jpg\r\n\r\nMàu vàng\r\n\r\nỐp siêu chống sốc UAG cho iPhone vượt trội về cả khả năng bảo vệ hoàn hảo lẫn thiết kế độc đáo, cá tính.', 'https://gomhang.vn/images/stories/virtuemart/product/ava-uag.jpg', 'đỏ|đen|trắng', '8', 1),
(3, 'Ốp lưng dạ quang iPhone 6-7-8-X-XR-Max-Plus', '99', 'Ấn tượng mạnh mẽ bởi thiết kế độc đáo và lạ mắt, ốp lưng dạ quang iPhone 6-7-8-X-XR-Max-Plus đem đến diện mạo vô cùng thú vị cho chiếc apple của bạn\r\n\r\n\r\nPhụ kiện thu hút sự chú ý bởi những nét đẹp riêng biệt:\r\nThiết kế dạ quang độc đáo, hình ảnh sáng lên trong bóng tối cực kỳ nổi bật\r\n\r\nMặt lưng bằng kính cường lực chống trầy xước tốt và giữ cho mặt lưng sáng bóng rất đẹp\r\n\r\nPhần viền được làm từ chất liệu nhựa TPU mềm chống sốc, dễ dàng tháo lắp vào máy\r\n\r\nHoạ tiết trên ốp rất cá tính và phong cách', 'https://gomhang.vn/images/stories/virtuemart/product/op-da-quang-iphone.jpg', 'đen', '50', 1),
(4, 'Ốp lưng mềm Hoco iPhone 6-6s Plus', '49', 'Ốp mềm Hoco Iphone 6-6s là sản phẩm chính hãng cao cấp sở hữu toàn bộ ưu điểm của các loại ốp lưng:\r\n\r\nMỏng, nhẹ: Ốp mềm Hoco dày chỉ 0,6mm và làm bằng chất liệu Silicon siêu nhẹ nhưng vẫn đảm bảo cầm chắc tay.\r\n\r\n \r\nTrong suốt: Dễ dàng kết hợp với mọi màu máy và khoe được toàn bộ thiết kế của chiếc iphone.\r\n\r\n \r\nBảo vệ an toàn: ốp có độ đàn hồi cao, không bị biến dạng, bảo vệ toàn bộ lưng và viền máy khỏi va đập. Mặt trong tráng vân caro chống dính lưng và hấp hơi khi nóng máy. Ốp siêu mỏng nhưng vẫn đủ an toàn cho chiếc camera nhạy cảm của iphone không bị cọ xát với mặt phẳng.', 'https://gomhang.vn/images/stories/virtuemart/product/op-iphone-6-hoco-silicon3045.jpg', 'trắng', '5', 1),
(5, 'Miếng dán PPF kim cương Samsung', '79', 'Những ưu điểm nổi bật củamiếng dán PPF cho Samsung\r\n\r\nĐộ trong suốt 99% giúp giữ nguyên vẹn màu sắc và các đường nét của máy, không bị ố vàng sau thời gian dài sử dụng\r\n\r\nVới samsung s10/ s10+ cảm biến vân tay hoạt động mượt mà hơn cả miếng dán hãng cho sẵn\r\n\r\nTự phục hồi các vết xước nhỏ là 1 trong những điểm đáng đồng tiền bát gạo nhất của miếng dán này\r\n\r\nKhả năng chống trầy và va đập hiệu quả. Ứng dụng vật liệu 3M chuyên sử dụng trong các ngành công nghiệp ô tô và quân sự\r\n\r\nĐộ mỏng vừa phải mang đến cảm giác \"dán như không dán\" đặc biệt thích hợp cho khách hàng muốn bảo vệ máy mà không muốn dùng ốp lưng\r\n\r\nĐặc biệt tính năng hạn chế vân tay giúp bề mặt điện thoại luôn luôn sáng bóng\r\n\r\nMọi chi tiết đều được cắt tỉa chính xác đến từng milimet\r\n\r\nSản phẩm có sẵn cho các dòng Samsung Note 8 / Note 9 / S10 / S10+ / S10e\r\n\r\nChi tiết sản phẩm\r\n\r\nMiếng dán PPF cho Samsung có tác dụng chống trầy xước, va đập nhẹ cho mặt lưng và cạnh viền của máy, dành cho những ai không thích sử dụng ốp lưng mà vẫn bảo vệ được máy luôn mới đẹp.', 'https://gomhang.vn/images/stories/virtuemart/product/dan-ppf-nano-mat-sau-s10.jpg', 'trong suốt', '20', 2),
(6, 'Dán cường lực Samsung Galaxy S6', '49', 'Dán cường lực Samsung Galaxy S6 là phụ kiện không thể thiếu cho tất cả các loại màn hình cảm ứng đắt tiền nhạy cảm, giúp bảo vệ tối ưu và giảm thiểu rủi ro khi va đập, trầy xước.\r\nLưu ý: hình ảnh trong bài là hình ảnh demo với iPhone 6, Dán cường lực Samsung Galaxy S6 trên thực tế chỉ khác về kích thước.\r\n\r\nDán cường lực Samsung Galaxy S6 có độ cứng tiêu chuẩn 9H có khả năng chịu lực cao, chống trầy xước tốt, bảo vệ tối ưu màn hình mà không ảnh hưởng đến độ mượt nhạy của cảm ứng.\r\n\r\n-cứng-9H13.jpg\r\n\r\nChất liệu cao cấp gần như trong suốt tuyệt đối, không thay đổi chất lượng hiển thị của màn hình. Đặc biệt bề mặt còn có khả năng chống dầu, chống mồ hôi, giúp hạn chế vân tay trong quá trình sử dụng.', 'https://gomhang.vn/images/stories/virtuemart/product/dan-kinh-cuong-luc-samsung-s6.jpg', 'trong suốt', '10', 2),
(7, 'Kính cường lực Samsung Note 5 hiệu Nillkin', '149', 'Kính cường lực Samsung Note 5 hiệu Nillkin xóa tan mọi lo lắng về màn hình lớn của Note 5 bị trầy xước, rơi vỡ, bảo vệ nó một cách hoàn hảo, bền bỉ\r\ntem150x150	\r\n\r\nKính cường lực Samsung Note 5 hiệu Nillkin là sản phẩm chính hãng với độ cứng 9H chống lại mọi tác nhân cọ xát và va đập gây xước vỡ màn hình.\r\n\r\nkinh-cuong-luc-note-5-9h-8.jpg\r\n\r\n \r\n\r\nSản phẩm cao cấp nên không ảnh hưởng gì đến chất lượng hiển thị hay độ nhạy của cảm ứng, giữ màn hình luôn trong và nét.', 'https://gomhang.vn/images/stories/virtuemart/product/kinh-cuong-luc-note-5-9h-3.jpg', 'trong suốt', '3', 2),
(8, 'Miếng dán cường lực samsung galaxy Note 4', '50', 'Miếng dán cường lực Samsung Galaxy Note 4 có độ trong suốt gần như tuyệt đối, không ảnh hưởng đến chất lượng hiển thị và chỉ dày 0.2mm, không ảnh hưởng đến màn hình cảm ứng.\r\n\r\nmieng-dan-cuong-luc-hoco-ghost-series-025mm-samsung-note-4-1m4G3-bae03e_simg_d0daf0_800x1200_max.jpg\r\n\r\nChất liệu kính cao cấp có độ cứng 9H bảo vệ vượt trội trước mọi va đập, cọ xát. Ứng dụng công nghệ kính chống đạn giúp kính khi bị vỡ cũng không có độ sắc, không cọ xước màn hình.', 'https://gomhang.vn/images/stories/virtuemart/product/dan-kinh-cuong-luc-s5-a73.jpg', 'trong suốt', '5', 2),
(9, 'aaaas', '1998', 'amdkaksk', 'https://via.placeholder.com/70', 'white|nani', '12', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `tendangnhap` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sodienthoai` varchar(15) NOT NULL,
  `diachi` text NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `tendangnhap`, `matkhau`, `hoten`, `email`, `sodienthoai`, `diachi`, `level`) VALUES
(1, 'admin', '123456', 'Nguyễn Tuấn Duy', 'ntduy.ttcb@gmail.com', '113', 'Tĩnh Túc - Cao Bằng', 1),
(2, 'tuananh', '123456', 'Nguyễn Tuấn Anh', 'ntak.ictu@gmail.com', '0987196812', 'Thái Bình', 0),
(3, 'nguoidung1', 'matkhau1', 'trần nguyên', 'tntchuoixanh@gmail.com', '114', 'đại từ - thái nguyên', 0),
(4, '1', '', '', '', '', '', 0),
(5, '15', '', '', '', '', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`),
  ADD UNIQUE KEY `tendangnhap` (`tendangnhap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 04:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltw_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `orderId` int(11) NOT NULL,
  `orderUsername` varchar(255) NOT NULL,
  `orderTotalPrice` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`orderId`, `orderUsername`, `orderTotalPrice`, `orderDate`, `status`) VALUES
(358159, 'dung123', 79950, '2023-12-07', 'Pending'),
(508806, 'dung123', 341700, '2023-12-07', 'Pending'),
(639563, 'dung123', 123800, '2023-12-08', 'Pending'),
(665133, 'hiuchoet', 659400, '2023-12-06', 'Pending'),
(670247, 'hiuchoet', 1153950, '2023-12-06', 'Pending'),
(700024, 'tantai', 769800, '2023-12-06', 'Pending'),
(780162, 'user1', 549500, '2023-12-06', 'Pending'),
(893258, 'hiuchoet', 164850, '2023-12-06', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `donhangbaogomsp`
--

CREATE TABLE `donhangbaogomsp` (
  `oId` int(11) NOT NULL,
  `oProductId` int(11) NOT NULL,
  `totalProduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhangbaogomsp`
--

INSERT INTO `donhangbaogomsp` (`oId`, `oProductId`, `totalProduct`) VALUES
(358159, 1, 1),
(508806, 2, 2),
(639563, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giohangbaogomsp`
--

CREATE TABLE `giohangbaogomsp` (
  `cUsername` varchar(255) NOT NULL,
  `cProductId` int(11) NOT NULL,
  `totalProduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `isbanned` tinyint(1) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`username`, `password`, `fullname`, `phoneNumber`, `email`, `sex`, `address`, `dateOfBirth`, `avatar`, `isbanned`, `role`) VALUES
('dung123', '$2y$10$1FIsadbibYZskVho8z8IIeV42.7QuW6nAVPRKmM5GTpFMs0FZTvjy', 'Dũng Đinh gà', '', 'tantaivo2003@gmail.com', 'male', '', '2023-12-09', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fanhdeptop10tphcm%2F1001-%25E1%25BA%25A3nh-trai-%25C4%2591%25E1%25BA%25B9p-khi%25E1%25BA%25BFn-b%25E1%25BA%25A1n-m%25C3%25AA-m%25E1%25BA%25A9n-m%25E1%25BB%259Bi-nh%25E1%25BA%25A5t-2023%2', NULL, NULL),
('hienminh', '$2y$10$vee2rdWt.K2DtE6M9QlxL.O7JoUhAj9TMBCRRk9nAnAATLLOk3Rxu', 'Hiển', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('hiuchoet', '$2y$10$/XIR04gnuy6W1oUHpyFaA.m1WaEK0qCzUzXv/YuheUwq6f/SchWqe', 'Hiếu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('minh', '$2y$10$2APABJ5e72QlgGLrjvdzF.RwHYuSSDr/1dUk1xBsS8VxfQJgv3wvG', 'Duong Gia Minh', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'user'),
('minh1', '$2y$10$KMEeXlbncb47/i4dIIEbM.34kFmoavQ.dww88RXVLrWwm.ImQ8kwO', 'Duong Gia Minh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('tantai', 'tantai', 'Tài', '1234567893', 'tantaivo2003@gmail.com', 'Male', 'KTX Khu B', '0000-00-00', 'https://icon-library.com/images/user-icon-jpg/user-icon-jpg-8.jpg', 1, 'admin'),
('tantai1', '$2y$10$MNVrEwXQh8iqNjKls426n.zp.FE4MuJKlPL6gehx36fg9RIa5gxku', 'Võ Tấn Tài 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('user1', 'password1', 'John Doe', '123456789', 'john@example.com', 'Male', '123 Main St', '1990-01-01', 'avatar1.jpg', 0, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidungdanhgiasp`
--

CREATE TABLE `nguoidungdanhgiasp` (
  `rId` int(11) NOT NULL,
  `rUsername` varchar(255) DEFAULT NULL,
  `rProductId` int(11) DEFAULT NULL,
  `numberStar` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `dateComment` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidungdanhgiasp`
--

INSERT INTO `nguoidungdanhgiasp` (`rId`, `rUsername`, `rProductId`, `numberStar`, `comment`, `dateComment`) VALUES
(4, 'dung123', 3, 5, 'tuyệt vời\r\n', '2023-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `quanly`
--

CREATE TABLE `quanly` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quanly`
--

INSERT INTO `quanly` (`username`, `password`, `fullname`, `phoneNumber`, `email`, `sex`, `address`, `dateOfBirth`, `avatar`, `role`) VALUES
('admin1', 'adminpass', 'Admin User', '987654321', 'admin@example.com', 'Male', '456 Admin St', '1985-01-01', 'adminavatar.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `productId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `productType` varchar(50) DEFAULT NULL,
  `display` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`productId`, `name`, `price`, `description`, `imageUrl`, `productType`, `display`) VALUES
(1, 'Patek Phillipe Aquanaut REF 5167/1A-001', 79950, 'Đồng hồ tự động Patek Philippe Aquanaut đã qua sử dụng (5066/1J-001), có một vỏ 18k vàng vàng 36mm bao quanh mặt đen trên dây đeo cổ tay cùng làm từ vàng 18k với khóa gập. Các chức năng bao gồm giờ, phút, giây và ngày. Đồng hồ đi kèm với bản sao trích xuất nguyên bản. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm!', 'https://watchbox-cdn.imgix.net/posted-product-images/638355438865294417_pate324117_4858171_96793_36-10.jpg?', 'Patek Phillipe', 1),
(2, 'Patek Phillipe Aquanaut REF 5167/1A-001', 56950, 'Đồng hồ tự động Patek Philippe Aquanaut đã qua sử dụng (5167/1A-001), có một vỏ thép không gỉ 40mm bao quanh mặt đen có họa tiết, được đặt trên dây đeo bằng thép không gỉ với khóa gập. Các chức năng bao gồm giờ, phút, giây và ngày. Đồng hồ này đã được bảo dưỡng và đi kèm với hộp đựng và giấy tờ nguyên bản. Còn thời gian bảo hành dịch vụ của nhà sản xuất!', 'https://watchbox-cdn.imgix.net/posted-product-images/638301972530653699_PATE319323_4831988_95426_40-2.jpg?', 'Patek Phillipe', 1),
(3, 'Vacheron Constantin Traditionnelle World Time REF 86060/000R-8985', 30950, 'Đồng hồ tự động Vacheron Constantin Traditionnelle World Time đã qua sử dụng (86060/000R-8985), có một vỏ vàng hồng 18k kích thước 42.5mm bao quanh mặt đồng hồ màu bạc và hồng, được đặt trên dây đeo da cá sấu màu nâu hoàn toàn mới với khóa gập vàng hồng 18k. Chức năng bao gồm giờ, phút, giây và thời gian thế giới. Đồng hồ này đã được bảo dưỡng và đi kèm với hộp và giấy bảo hành nguyên bản. Còn thời gian bảo hành dịch vụ của nhà sản xuất!', 'https://watchbox-cdn.imgix.net/posted-product-images/637950628952387224_VACH304765_4551230_77836_42-1.jpg?', 'Vacheron Constantin', 1),
(4, 'Audemars Piguet Millenary REF 77266OR.GG.A823CR.01', 18950, 'Đồng hồ tự động Audemars Piguet Millenary đã qua sử dụng (77266ORGGA823CR01), có một vỏ vàng hồng 18k mờ kích thước 39.5mm bao quanh mặt đồng hồ màu nâu với hoa văn gồm nhiều chấm trên dây đeo da cá sấu nâu, được kết hợp với khóa cài vàng hồng 18k. Chức năng bao gồm giờ và phút. Đồng hồ này đi kèm đầy đủ với hộp và giấy tờ. Số serial K. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm!', 'https://watchbox-cdn.imgix.net/posted-product-images/637750153503954343.jpg?', 'Audemars Piguet', 1),
(5, 'Audemars Piguet CODE 11.59 Chronograph\r\nREF 26393OR.OO.A028CR.01', 40950, 'Đồng hồ tự động Audemars Piguet CODE 11.59 Chronograph đã qua sử dụng (26393OR.OO.A028CR.01), có một vỏ vàng hồng 18k kích thước 41mm bao quanh mặt đồng hồ màu xanh dương với hiệu ứng nắng trên dây đeo da cá sấu đen, được kết hợp với khóa cài vàng hồng 18k. Chức năng bao gồm giờ, phút, giây nhỏ, ngày, đồng hồ bấm giờ và vòng đo tốc độ. Đồng hồ này đi kèm đầy đủ với hộp và giấy tờ nguyên bản. Số serial phân tán. Còn thời gian bảo hành nhà máy!', 'https://watchbox-cdn.imgix.net/posted-product-images/638247709776466704_aude310660_4834990_95731_41-11.jpg?', 'Audemars Piguet', 1),
(6, 'Audemars Piguet Royal Oak \"Jumbo\" Extra-Thin\r\nREF 16202ST.OO.1240ST.02', 89950, 'Đồng hồ tự động Audemars Piguet Royal Oak \"Jumbo\" Extra-Thin đã qua sử dụng (16202ST.OO.1240ST.02), có một vỏ thép không gỉ kích thước 39mm bao quanh mặt đồng hồ màu \"bleu nuit nuage 50\" Petite Tapisserie, được đặt trên dây đeo thép không gỉ với khóa gập. Chức năng bao gồm giờ, phút và ngày. Đồng hồ này đi kèm với hộp và giấy tờ nguyên bản. Số serial phân tán. Hầu hết thời gian bảo hành nhà máy vẫn còn lại! Để duy trì đặc tính và giá trị sưu tập, chúng tôi không mài đánh đồng hồ này. Đồng hồ này sẽ sẵn sàng gửi trong vòng 5-7 ngày!!', 'https://watchbox-cdn.imgix.net/posted-product-images/638212905100818165_AUDE314092_4830709_95543_39-14.jpg?', 'Audemars Piguet', 1),
(7, 'Patek Phillipe Calatrava REF 4896G-001', 21950, 'Đồng hồ Patek Philippe Calatrava đã qua sử dụng (4896G-001), sử dụng cơ cấu quay bằng tay, có một vỏ vàng trắng 18k có kích thước 33mm với đính kim cương trên viền bao quanh mặt đồng hồ màu xanh đậm guilloche, được đặt trên dây đeo satin màu xanh hoàn toàn mới với khóa cài bằng vàng trắng 18k. Chức năng bao gồm giờ và phút. Đồng hồ này đi kèm với giấy tờ. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm! Đồng hồ này sẽ sẵn sàng gửi trong vòng 5-7 ngày!', 'https://watchbox-cdn.imgix.net/posted-product-images/638326008717798910_pate602981_4886719_97840_33-31.jpg?', 'Patek Phillipe', 1),
(8, 'Patek Phillipe Grand Complications Perpetual Calendar Minute Repeater Tonneau REF 5013J-001', 349950, 'Đồng hồ tự động Patek Philippe Grand Complications Perpetual Calendar Minute Repeater Tonneau đã qua sử dụng (5013J-001), có một vỏ vàng vàng 18k kích thước 36mm bao quanh mặt đồng hồ màu bạc, được đặt trên dây đeo da cá sấu đen hoàn toàn mới với khóa cài vàng 18k. Các chức năng bao gồm giờ, phút, giây, ngày, thứ, máy kêu, tháng, pha mặt trăng và lịch vạn niên. Đồng hồ này đã được bảo dưỡng, đi kèm với dấu niêm phong dịch vụ và bản trích xuất. Còn thời gian bảo hành dịch vụ của nhà sản xuất! Đồng hồ này sẽ sẵn sàng gửi trong vòng 5-7 ngày!', 'https://watchbox-cdn.imgix.net/posted-product-images/638210339572835037_pate323036_4762191_91769-2.jpg?', 'Patek Phillipe', 1),
(9, 'Vacheron Patrimony Special Edition REF 91180/000R-9192', 16950, 'Đồng hồ cơ Vacheron Constantin Patrimony Special Edition đã qua sử dụng (91180/000R-9192), có một vỏ vàng hồng 18k kích thước 40mm bao quanh mặt đồng hồ màu đen, được đặt trên dây đeo da cá sấu màu đen với khóa cài vàng hồng 18k. Chức năng bao gồm giờ, phút và giây nhỏ. Đồng hồ này không đi kèm với hộp hoặc giấy tờ. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm!\r\n\r\n\r\n\r\n\r\n\r\n', 'https://watchbox-cdn.imgix.net/posted-product-images/638314277192786481_5f29cd48-5ed1-42d1-abd2-4a4696bee67c.jpg?', 'Vacheron Constantin', 1),
(10, 'Patek Phillipe Nautilus REF 3900/1A-001', 39950, 'Đồng hồ Patek Philippe Nautilus đã qua sử dụng (3900/1A-001), sử dụng cơ cấu quartz, có một vỏ thép không gỉ 32mm bao quanh mặt đồng hồ màu xanh lá cây, đặt trên dây đeo bằng thép không gỉ với khóa gập. Các chức năng bao gồm giờ, phút, giây và ngày. Đồng hồ này không đi kèm với hộp hoặc giấy tờ. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm!', 'https://watchbox-cdn.imgix.net/posted-product-images/638338425328130782_1679d390-5519-4095-94fa-f95d5a4b86a9.jpg?', 'Patek Phillipe', 1),
(11, 'Vacheron Overseas Perpetual Calendar Ultra-Thin REF 4300V/120G-B945', 109950, 'Đồng hồ tự động Vacheron Constantin Overseas Perpetual Calendar Ultra-Thin đã qua sử dụng (4300V/120G-B945), có một vỏ vàng trắng 18k kích thước 41.5mm bao quanh mặt đồng hồ màu xanh dương, được đặt trên dây đeo vàng trắng 18k với khóa gập. Chức năng bao gồm giờ, phút, giây, ngày, thứ, tháng, pha mặt trăng và lịch vạn niên. Đồng hồ này đi kèm với hộp và giấy tờ nguyên bản. Còn thời gian bảo hành nhà máy! Đồng hồ này sẽ sẵn sàng gửi trong vòng 5-7 ngày!', 'https://watchbox-cdn.imgix.net/posted-product-images/638192500230570518_vach_4776662_RR_1.jpg?', 'Vacheron Constantin', 1),
(12, 'Vacheron Overseas Chronograph REF 5500V/110A-B686', 33950, 'Đồng hồ tự động Vacheron Constantin Overseas Chronograph đã qua sử dụng (5500V/110A-B686), có một vỏ thép không gỉ kích thước 42.5mm bao quanh mặt đồng hồ màu bạc, được đặt trên dây đeo thép không gỉ với khóa gập. Chức năng bao gồm giờ, phút, giây nhỏ, ngày và đồng hồ bấm giờ. Đồng hồ này đi kèm với hộp và giấy tờ nguyên bản. Hầu hết thời gian bảo hành nhà máy vẫn còn lại!', 'https://watchbox-cdn.imgix.net/posted-product-images/638369426434774415_vach306969_4901104_98837_43-24.jpg?', 'Vacheron Constantin', 1),
(13, 'Vacheron Overseas REF 4500V/110R-B705', 72950, 'Đồng hồ tự động Vacheron Constantin Overseas đã qua sử dụng (4500V/110R-B705), có một vỏ vàng hồng 18k kích thước 41mm bao quanh mặt đồng hồ màu xanh dương, được đặt trên dây đeo vàng hồng 18k với khóa gập. Chức năng bao gồm giờ, phút, giây và ngày. Đồng hồ này đi kèm với hộp và giấy tờ nguyên bản. Còn thời gian bảo hành nhà máy!', 'https://watchbox-cdn.imgix.net/posted-product-images/638367612359211099_VACH306978_4901864_98671_41-1.jpg?', 'Vacheron Constantin', 1),
(14, 'Audemars Piguet Edward Piguet Large Date Tourbillon\r\nREF 26009BC.OO.D002CR.01', 54950, 'Đồng hồ cơ Audemars Piguet Edward Piguet Large Date Tourbillon đã qua sử dụng (26009BC.OO.D002CR.01), có một vỏ vàng trắng 18k kích thước 34mm x 51mm bao quanh mặt đồng hồ màu bạc, được đặt trên dây đeo da cá sấu màu đen với khóa cài vàng trắng 18k. Chức năng bao gồm giờ, phút, tourbillon và ngày. Đồng hồ này đi kèm với giấy tờ. Số serial F. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm!', 'https://watchbox-cdn.imgix.net/posted-product-images/638113696570180874_aude313243_4713681_89726_34-1.jpg?', 'Audemars Piguet', 1),
(15, 'Audemars Piguet Royal Oak Chronograph Frosted Limited Edition REF 26331BC.GG.1224BC.03', 184950, 'Đồng hồ tự động Audemars Piguet Royal Oak Chronograph Frosted Limited Edition đã qua sử dụng (26331BC.GG.1224BC.03), có một vỏ vàng trắng 18k mờ kích thước 41mm bao quanh mặt đồng hồ màu đen Grande Tapiserrie, được đặt trên dây đeo vàng trắng 18k mờ với khóa gập. Chức năng bao gồm giờ, phút, giây nhỏ, đồng hồ bấm giờ và ngày. Đồng hồ này đi kèm đầy đủ với hộp và giấy tờ. Số serial phân tán. Đây là một phiên bản giới hạn chỉ có 111 chiếc! Còn thời gian bảo hành nhà máy!', 'https://watchbox-cdn.imgix.net/posted-product-images/638091363878605556_aude313557_4763389_91806_41_1.jpg?', 'Audemars Piguet', 1),
(16, 'Audemars Piguet Royal Oak REF 15413OR.YY.1220OR.01', 299950, 'Đồng hồ tự động Audemars Piguet Royal Oak đã qua sử dụng (15413OR.YY.1220OR.01), có một vỏ vàng hồng 18k kích thước 41mm với đính cầu vồng màu xinh đẹp, bao quanh mặt đồng hồ màu kim cương, được đặt trên dây đeo vàng hồng 18k với khóa gập. Chức năng bao gồm giờ, phút, giây và ngày. Đồng hồ này đi kèm với hộp và giấy tờ nguyên bản cũng như hướng dẫn sử dụng. Số serial K. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm! Đồng hồ này sẽ sẵn sàng gửi trong vòng 5-7 ngày!', 'https://watchbox-cdn.imgix.net/posted-product-images/637939159983467303_aude313235_4711693_89678_41_4.jpg?', 'Audemars Piguet', 1),
(17, 'Patek Phillipe Grand Complication Split-Seconds Chronograph REF 5370P-011', 234950, 'Đồng hồ cơ Patek Philippe Grand Complication Split-Seconds Chronograph đã qua sử dụng (5370P-011), có một vỏ bằng bạch kim kích thước 41mm bao quanh mặt đồng hồ màu xanh đậm grand feu bleu enamel, được đặt trên dây đeo da cá sấu màu hải quân mới hoàn toàn với khóa gập Calatrava Cross bằng bạch kim. Chức năng bao gồm giờ, phút, giây nhỏ, đồng hồ bấm giờ chia và vòng đo tốc độ. Đồng hồ này đi kèm đầy đủ với hộp và giấy tờ nguyên bản. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm!', 'https://watchbox-cdn.imgix.net/posted-product-images/638223286591789300_PATE323663_4839726_95998_41-1.jpg?', 'Patek Phillipe', 1),
(18, 'Patek Phillipe Grand Complications Perpetual Calendar Chronograph REF 5270P-001', 199950, 'Đồng hồ cơ Patek Philippe Grand Complications Perpetual Calendar Chronograph đã qua sử dụng (5270P-001), có một vỏ bằng bạch kim kích thước 41mm bao quanh mặt đồng hồ màu hồng vàng opaline, được đặt trên dây đeo da cá sấu màu nâu với khóa gập Calatrava Cross bằng bạch kim. Chức năng bao gồm giờ, phút, giây nhỏ, ngày, đồng hồ bấm giờ, ngày, tháng, pha mặt trăng và lịch vạn niên. Đồng hồ này đi kèm đầy đủ với hộp và giấy tờ nguyên bản. Chúng tôi hỗ trợ sản phẩm này với bảo hành WatchBox 2 năm!', 'https://watchbox-cdn.imgix.net/posted-product-images/638340111167641138_PATE324521_4894812_98611-41-10.jpg?', 'Patek Phillipe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thenganhang`
--

CREATE TABLE `thenganhang` (
  `cardNumber` varchar(20) NOT NULL,
  `CVV` varchar(4) DEFAULT NULL,
  `expirationDate` date DEFAULT NULL,
  `cardUsername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thenganhang`
--

INSERT INTO `thenganhang` (`cardNumber`, `CVV`, `expirationDate`, `cardUsername`) VALUES
('113111313133', '3113', '2023-12-16', 'dung123'),
('13133131331', '1313', '2023-12-28', 'hienminh'),
('144451451413', '133', '2023-12-08', 'hiuchoet'),
('113111313137', '1254', '2023-12-16', 'tantai'),
('11311', '132', '2023-12-15', 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `thongtin`
--

CREATE TABLE `thongtin` (
  `address` varchar(500) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongtin`
--

INSERT INTO `thongtin` (`address`, `phone`) VALUES
('268 Lý Thường KiệtPhường 14, Quận 10, Thành phố Hồ Chí Minh', '0968686868');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `orderUsernameToUsername` (`orderUsername`);

--
-- Indexes for table `donhangbaogomsp`
--
ALTER TABLE `donhangbaogomsp`
  ADD PRIMARY KEY (`oId`,`oProductId`),
  ADD KEY `oProductIdtoProductId` (`oProductId`);

--
-- Indexes for table `giohangbaogomsp`
--
ALTER TABLE `giohangbaogomsp`
  ADD PRIMARY KEY (`cUsername`,`cProductId`),
  ADD KEY `cProductIdtoProductId` (`cProductId`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `nguoidungdanhgiasp`
--
ALTER TABLE `nguoidungdanhgiasp`
  ADD PRIMARY KEY (`rId`),
  ADD KEY `rUsernameToUsername` (`rUsername`),
  ADD KEY `rProductIdToProductId` (`rProductId`);

--
-- Indexes for table `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `thenganhang`
--
ALTER TABLE `thenganhang`
  ADD PRIMARY KEY (`cardUsername`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nguoidungdanhgiasp`
--
ALTER TABLE `nguoidungdanhgiasp`
  MODIFY `rId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `orderUsernameToUsername` FOREIGN KEY (`orderUsername`) REFERENCES `khachhang` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donhangbaogomsp`
--
ALTER TABLE `donhangbaogomsp`
  ADD CONSTRAINT `oIdtoOrderId` FOREIGN KEY (`oId`) REFERENCES `donhang` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oProductIdtoProductId` FOREIGN KEY (`oProductId`) REFERENCES `sanpham` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `giohangbaogomsp`
--
ALTER TABLE `giohangbaogomsp`
  ADD CONSTRAINT `cProductIdtoProductId` FOREIGN KEY (`cProductId`) REFERENCES `sanpham` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cUsernametoUsername` FOREIGN KEY (`cUsername`) REFERENCES `khachhang` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nguoidungdanhgiasp`
--
ALTER TABLE `nguoidungdanhgiasp`
  ADD CONSTRAINT `rProductIdToProductId` FOREIGN KEY (`rProductId`) REFERENCES `sanpham` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rUsernameToUsername` FOREIGN KEY (`rUsername`) REFERENCES `khachhang` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thenganhang`
--
ALTER TABLE `thenganhang`
  ADD CONSTRAINT `CardToKH` FOREIGN KEY (`cardUsername`) REFERENCES `khachhang` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

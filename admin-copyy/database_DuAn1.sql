-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 07:23 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_duandoannhanhonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idCart` int(11) NOT NULL COMMENT 'mã oder',
  `id_user` int(11) DEFAULT NULL COMMENT 'mã Khách Hàng',
  `idCartDetail` int(11) DEFAULT NULL COMMENT 'Mã Order chi tiết'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idCart`, `id_user`, `idCartDetail`) VALUES
(145, 67, 145);

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL COMMENT 'mã order chi tiết',
  `id_product` int(11) DEFAULT NULL COMMENT 'mã sản phẩm',
  `qty` int(11) DEFAULT NULL COMMENT 'Số Lượng',
  `size` varchar(200) NOT NULL COMMENT 'size'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `qty`, `size`) VALUES
(132, 36, 1, 'Phần'),
(133, 44, 1, 'Combo'),
(134, 34, 1, 'Phần'),
(135, 61, 1, 'S'),
(136, 56, 1, 'Phần'),
(137, 51, 1, 'S'),
(138, 50, 1, 'S'),
(141, 34, 1, 'Phần'),
(142, 57, 1, 'Phần'),
(143, 51, 1, 'S'),
(144, 62, 5, 'M'),
(145, 47, 1, 'Phần'),
(146, 47, 1, 'Phần'),
(147, 35, 1, 'Phần'),
(148, 36, 1, 'Phần'),
(149, 50, 1, 'S'),
(150, 51, 1, 'S'),
(151, 51, 1, 'S'),
(152, 57, 1, 'Phần');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL COMMENT 'mã loại sản phẩm',
  `nameCategory` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tên loại sản phẩm',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'hình ảnh loại sản phẩm',
  `id_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `nameCategory`, `image`, `id_size`) VALUES
(30, 'Đồ Ăn Nhanh', 'category01.jpg', 3),
(31, 'Đồ Uống', 'category002.jfif', 1),
(32, 'Combo Nhóm', '556X448-B.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `codediscount`
--

CREATE TABLE `codediscount` (
  `idCode` int(11) NOT NULL,
  `codeContent` varchar(10) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL COMMENT 'Mã Khách Hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `codediscount`
--

INSERT INTO `codediscount` (`idCode`, `codeContent`, `discount`, `endDate`, `count`, `id_user`) VALUES
(10, 'HQ1155f6', 100, '2021-07-24', 9, NULL),
(11, 'HQ3ade5', 100, '2021-07-30', 10, NULL),
(12, 'VA764QDF', 50, '2021-07-30', 0, 52),
(15, 'VA764Q213', 100, '2021-07-22', 0, 52),
(16, 'G5GDHF', 50, '2021-07-24', 1, 5),
(17, 'VA764RGF', 50, '2021-07-31', 1, 5),
(18, 'HR2df5b0', 100, '2021-12-01', 1, 61),
(24, 'HRe31e54', 100, '2021-12-01', 1, 67),
(25, 'HQ1aa4f2', 100, '2021-08-30', 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL COMMENT 'Mã Bình Luận',
  `content` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nội Dung',
  `user_id` int(11) NOT NULL COMMENT 'mã  khách hàng',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'thời gian bình luận',
  `id_product` int(11) NOT NULL COMMENT 'mã sản phẩm',
  `disabled` bit(1) NOT NULL COMMENT 'Ẩn bình luận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `content`, `user_id`, `date`, `id_product`, `disabled`) VALUES
(13, 'Thật là tuyệt vời', 5, '2021-08-01 08:16:36', 35, b'1'),
(14, 'Bánh mì ngon quá. tôi sẽ mua nó vào lần tới', 48, '2021-07-27 14:06:23', 57, b'0'),
(15, 'Món ăn ngon quá. Ăn một lần nhớ mãi', 5, '2021-08-01 08:10:07', 34, b'1'),
(16, 'Hay Quá', 48, '2021-08-01 08:14:47', 57, b'1'),
(17, 'Trà chanh quá ngon', 48, '2021-08-05 15:25:55', 44, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `idFeeback` int(11) NOT NULL COMMENT 'mã phản hồi',
  `idUser` int(11) NOT NULL COMMENT 'id người phản hồi',
  `idProduct` int(11) NOT NULL COMMENT 'id sản phẩm',
  `content` varchar(500) NOT NULL COMMENT 'Nội dung phản hồi',
  `starPoint` int(11) NOT NULL COMMENT 'Điểm đánh giá',
  `dateFeedback` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Ngày feedback'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`idFeeback`, `idUser`, `idProduct`, `content`, `starPoint`, `dateFeedback`) VALUES
(14, 5, 36, 'Giao Hàng Rất Nhanh. ! ❤❤❤', 5, '2021-07-26 07:36:13'),
(15, 5, 56, 'Giao Hàng Rất Nhanh. ! ❤❤❤', 5, '2021-07-31 08:30:01'),
(16, 67, 34, 'Shop giao hàng rất nhanh. Đồ ăn cũng rất ngon', 5, '2021-07-31 18:36:41'),
(17, 67, 57, 'Shop giao hàng rất nhanh. Đồ ăn cũng rất ngon', 5, '2021-07-31 18:36:41'),
(18, 67, 51, 'Shop giao hàng rất nhanh. Đồ ăn cũng rất ngon', 5, '2021-07-31 18:36:41'),
(19, 67, 62, 'Shop giao hàng rất nhanh. Đồ ăn cũng rất ngon', 5, '2021-07-31 18:36:41'),
(20, 48, 44, 'Ngon tuyệt cú mèo luôn !', 4, '2021-08-05 15:17:06'),
(21, 48, 36, 'Sản phẩm CHất Lượng quá', 2, '2021-08-05 17:20:28'),
(22, 48, 51, 'Sản phẩm CHất Lượng quá', 2, '2021-08-05 17:20:28'),
(23, 48, 57, 'Sản phẩm này quá là ngon', 4, '2021-08-05 17:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id_information` int(11) NOT NULL,
  `logo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url logo',
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'địa chỉ 1',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'số điện thoại',
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id_information`, `logo`, `address1`, `phone`, `email`) VALUES
(1, 'logoPopo.png', 'ĐHCT, Hưng Lợi, Ninh Kiều, cần Thơ', '0762839249', 'ff@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `location_district`
--

CREATE TABLE `location_district` (
  `districtid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinceid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_district`
--

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL COMMENT 'Mã Thông Báo',
  `title` varchar(200) DEFAULT NULL COMMENT 'Tiêu Đề',
  `content` varchar(200) DEFAULT NULL COMMENT 'Nội Dung',
  `value` varchar(200) NOT NULL COMMENT 'Giá Trị Chinh ',
  `id_user` int(11) DEFAULT NULL COMMENT 'id user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `content`, `value`, `id_user`) VALUES
(109, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 5),
(110, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00783ce đã chuyển trạng thái thành ', 'Đã giao hàng', 5),
(111, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 5),
(112, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00c13dc đã chuyển trạng thái thành ', 'Đã giao hàng', 5),
(113, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 5),
(114, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00f7fe5 đã chuyển trạng thái thành ', 'Đã giao hàng', 5),
(115, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 48),
(116, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 5),
(117, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 5),
(118, 'Chào Mừng Bạn Đến Với PoDo', 'Bạn đã đăng ký thành công và được tặng một mã free ship: ', '.HR2df5b0.', 61),
(123, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 5),
(124, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00b01e1 đã chuyển trạng thái thành ', 'Đã giao hàng', 5),
(125, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH0086bed đã chuyển trạng thái thành ', 'Đã giao hàng', 5),
(126, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00096c5 đã chuyển trạng thái thành ', 'Đã giao hàng', 48),
(128, 'Chào Mừng Bạn Đến Với PoDo', 'Bạn đã đăng ký thành công và được tặng một mã free ship: ', '.HRe31e54.', 67),
(129, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 67),
(130, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00c3a7b đã chuyển trạng thái thành ', 'Đang lên đơn', 67),
(131, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00c3a7b đã chuyển trạng thái thành ', 'Đã giao hàng', 67),
(132, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 5),
(133, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 48),
(134, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00096c5 đã chuyển trạng thái thành ', 'Đã giao hàng', 48),
(135, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00421c4 đã chuyển trạng thái thành ', 'Thành Công', 5),
(136, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH0086bed đã chuyển trạng thái thành ', 'Thành Công', 5),
(137, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH00421c4 đã chuyển trạng thái thành ', 'Thành Công', 5),
(138, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 5),
(139, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH000e65d đã chuyển trạng thái thành ', 'Thành Công', 5),
(140, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 48),
(141, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH009b32c đã chuyển trạng thái thành ', 'Đã giao hàng', 48),
(142, 'Đặt Hàng Thành Công', 'Chúc mừng bạn đã đặt hàng thành công', '', 48),
(143, 'Đơn Hàng Đã Chuyển Trạng Thái', 'Đơn hàng DH004b956 đã chuyển trạng thái thành ', 'Đã giao hàng', 48);

-- --------------------------------------------------------

--
-- Table structure for table `oderdetail`
--

CREATE TABLE `oderdetail` (
  `id_oderDetail` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `price` int(11) NOT NULL COMMENT 'Đơn giá',
  `qty` int(11) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oderdetail`
--

INSERT INTO `oderdetail` (`id_oderDetail`, `id_product`, `price`, `qty`, `size`) VALUES
(119, 36, 29750, 1, 'Phần'),
(120, 44, 80750, 1, 'Combo'),
(121, 34, 44500, 1, 'Phần'),
(122, 61, 20900, 1, 'S'),
(123, 56, 36000, 1, 'Phần'),
(124, 51, 28500, 1, 'S'),
(125, 50, 27000, 1, 'S'),
(126, 34, 44500, 1, 'Phần'),
(127, 57, 27000, 1, 'Phần'),
(128, 51, 28500, 1, 'S'),
(129, 62, 27000, 5, 'M'),
(130, 47, 53200, 1, 'Phần'),
(131, 35, 19000, 1, 'Phần'),
(132, 50, 27000, 1, 'S'),
(133, 51, 28500, 1, 'S'),
(134, 36, 29750, 1, 'Phần'),
(135, 51, 28500, 1, 'S'),
(136, 57, 27000, 1, 'Phần');

-- --------------------------------------------------------

--
-- Table structure for table `orderr`
--

CREATE TABLE `orderr` (
  `idOder` int(11) NOT NULL COMMENT 'mã đơn hàng',
  `codeOrder` varchar(10) NOT NULL COMMENT 'Mã Đơn Hàng',
  `idUser` int(11) DEFAULT NULL COMMENT 'mã khách hàng',
  `id_oderDetail` int(11) DEFAULT NULL COMMENT 'mã order',
  `status` int(11) DEFAULT NULL COMMENT 'Trạng thái đơn hàng',
  `nameReceiver` varchar(50) DEFAULT NULL COMMENT 'Tên người nhận',
  `phoneReceiver` varchar(50) DEFAULT NULL COMMENT 'SĐT người nhận',
  `emailReceiver` varchar(50) NOT NULL COMMENT 'Email Người Nhận',
  `adressReceiver` varchar(200) DEFAULT NULL COMMENT 'Địa chỉ người nhận',
  `noteOrder` varchar(500) NOT NULL COMMENT 'Ghi chú đơn hàng',
  `feeShip` int(11) NOT NULL COMMENT 'Tiền Ship',
  `dateOrder` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Ngày đặt hàng',
  `feedback` varchar(500) NOT NULL COMMENT 'Nhận xét đơn hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderr`
--

INSERT INTO `orderr` (`idOder`, `codeOrder`, `idUser`, `id_oderDetail`, `status`, `nameReceiver`, `phoneReceiver`, `emailReceiver`, `adressReceiver`, `noteOrder`, `feeShip`, `dateOrder`, `feedback`) VALUES
(114, 'DH00f7fe5', 5, 119, 5, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 35000, '2021-07-26 07:36:06', ''),
(115, 'DH00096c5', 48, 120, 5, 'Trần Quốc Tuấn', '0329766459', 'tuan1234@gmail.com', '3 tháng 2, Mỹ Đình, Hưng Lợi, Ninh Kiều', 'Không', 0, '2021-08-05 15:16:38', ''),
(116, 'DH0086bed', 5, 121, 5, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 0, '2021-08-05 17:15:50', ''),
(117, 'DH0086bed', 5, 122, 5, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 0, '2021-08-05 17:15:50', ''),
(118, 'DH00b01e1', 5, 123, 5, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 35000, '2021-07-31 08:29:54', ''),
(119, 'DH00a01a0', 5, 124, 6, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 35000, '2021-07-31 08:29:10', ''),
(120, 'DH00a01a0', 5, 125, 6, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 35000, '2021-07-31 08:29:10', ''),
(121, 'DH00c3a7b', 67, 126, 5, 'Võ Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 0, '2021-07-31 18:36:03', ''),
(122, 'DH00c3a7b', 67, 127, 5, 'Võ Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 0, '2021-07-31 18:36:03', ''),
(123, 'DH00c3a7b', 67, 128, 5, 'Võ Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 0, '2021-07-31 18:36:03', ''),
(124, 'DH00c3a7b', 67, 129, 5, 'Võ Định', '+84329766459', 'vodinh2000ht@gmail.com', '3 tháng 2, Hưng Lợi, Ninh Kiều, Cần Thơ', 'Không', 0, '2021-07-31 18:36:03', ''),
(125, 'DH00421c4', 5, 130, 5, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', 'Cao đẳng FPT, Trịnh Văn Bô, Hưng Lợi, Ninh Kiều', 'Không', 35000, '2021-08-05 17:15:56', ''),
(126, 'DH004d211', 48, 131, 6, 'Trần Quốc Tuấn', '0329766459', 'tuan1234@gmail.com', '3 tháng 2, Mỹ Đình, Hưng Lợi, Ninh Kiều', 'Không', 35000, '2021-08-05 15:15:48', ''),
(127, 'DH000e65d', 5, 132, 5, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', 'Cao đẳng FPT, Trịnh Văn Bô, Hưng Lợi, Ninh Kiều', 'Không', 0, '2021-08-05 17:17:38', ''),
(128, 'DH000e65d', 5, 133, 5, 'Võ Văn Định', '+84329766459', 'vodinh2000ht@gmail.com', 'Cao đẳng FPT, Trịnh Văn Bô, Hưng Lợi, Ninh Kiều', 'Không', 0, '2021-08-05 17:17:38', ''),
(129, 'DH009b32c', 48, 134, 5, 'Trần Quốc Tuấn', '0329766459', 'tuan1234@gmail.com', '3 tháng 2, Mỹ Đình, Hưng Lợi, Ninh Kiều', 'Không', 0, '2021-08-05 17:20:03', ''),
(130, 'DH009b32c', 48, 135, 5, 'Trần Quốc Tuấn', '0329766459', 'tuan1234@gmail.com', '3 tháng 2, Mỹ Đình, Hưng Lợi, Ninh Kiều', 'Không', 0, '2021-08-05 17:20:03', ''),
(131, 'DH004b956', 48, 136, 5, 'Trần Quốc Tuấn', '0329766459', 'tuan1234@gmail.com', '3 tháng 2, Mỹ Đình, Hưng Lợi, Ninh Kiều', 'Giao hàng nhanh giúp mình', 35000, '2021-08-05 17:22:42', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL COMMENT 'mã sản phẩm',
  `nameProduct` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tên sản phẩm',
  `price` int(11) NOT NULL COMMENT 'giá tiền',
  `discount` int(2) NOT NULL COMMENT 'giảm giá (%)',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url hình ảnh',
  `describe` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'thông tin sản phẩm',
  `id_category` int(11) NOT NULL COMMENT 'mã loại',
  `view` int(11) NOT NULL COMMENT 'số lượt xem',
  `date` date NOT NULL COMMENT 'ngày đăng sản phẩm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `nameProduct`, `price`, `discount`, `image`, `describe`, `id_category`, `view`, `date`) VALUES
(34, 'Pizza Phô Mai Đặc Biệt Delica', 50000, 11, 'product0001.jpeg', 'Pizza phong cách Ý - làm từ nguyên liệu chất lượng tươi mới mỗi ngày.', 30, 79, '2021-06-30'),
(35, 'Khoai Tây Lutosa Size Lớn - Potato Big Size', 20000, 5, 'product002.jpeg', 'Khoai Tây Lutosa nhập từ Bỉ với độ giòn, ngon càng ăn càng nghiền. Giá chỉ 20k. Khoai tây chuẩn ăn kèm bò bit tết. Hương vị thơm ngon hấp dẫn khó quên khi thưởng thức. Hỗ trợ đặt hàng. Liên hệ tư vấn. Tư vấn ngay. Loại: Lõi vai bò Mỹ, Bắp bò Úc Shinkshan, Chả cá Surimi', 30, 162, '2021-06-30'),
(36, ' Gà Viên Sốt Hàn Quốc Delica', 35000, 15, 'product003.jpeg', 'Viên gà có lớp vỏ giòn nhẹ, bên trong thịt mềm, nóng hổi với nước sốtcay quyện sánh đậm đà, xen lẫn với đậu phộng rang bùi bùi ăn ngon hết chê!', 30, 79, '2021-06-30'),
(42, 'Combo Gà Viên', 85000, 0, 'product009.jpeg', '1 Miếng Gà + 1 Hộp Gà Viên (Vừa) + 1 Lon Pepsi', 32, 79, '2021-07-03'),
(43, 'Combo Gia Đình', 355000, 10, 'product010.jpeg', '5 Miếng Gà + 2 Burger Tôm + 2 Khoai Tây chiên ( Lớn ) + 3 Lon Pepsi', 32, 166, '2021-07-03'),
(44, 'Combo Bóng Đá', 85000, 5, 'product011.jpeg', '01 Miếng Gà + 01 Gà Popcorn (Vừa)/ Burger Tôm/ Mì Ý Pop + 01 Bắp Cải Trộn + 01 Pepsi Lon + 1 Phiếu Cào&nbsp;', 32, 91, '2021-07-03'),
(45, 'Combo Burger Bò khoai giòn tràn phô mai', 91000, 10, 'product012.jpeg', 'Combo Burger Bò Khoai Giòn Tràn Đầy Phô Mai', 32, 7, '2021-07-03'),
(46, 'Combo Ăn No ', 201000, 15, 'product013.jpeg', 'DELIGHT COMBO. 2 Burger Siêu Nhân Phô Mai Bò Deluxe + 2 Coke + Khoai Tây Chiên + 4 Miếng Gà Nuggets', 32, 14, '2021-07-03'),
(47, 'Burger Bò Tắm Phô Mai', 56000, 5, 'product014.jpeg', 'Burger Bò Tắm Phô Mai Đậm Vị Phô Mai không bị béo ngậy<br>', 30, 68, '2021-07-03'),
(49, ' Trà Chanh Việt Quất Bạc Phận', 25000, 5, 'product016.jpeg', 'Trà chanh là sự kết hợp hoàn hảo của trà, chanh và đường tạo nên thức uống chua, ngọt và đăng đắng có hậu của trà. Không chỉ là thức uống độc đáo, trà chanh cũng có tác dụng tích cực cho sức khỏe. Trong trà chanh có chất chống oxy hóa giúp ngăn ngừa ung thư, bảo vệ làn da, chống lão hóa. Bên cạnh đó, vitamin C được bổ sung trong trà chanh giúp thải độc, làm sạch cơ thể tốt và tốt cho hệ tiêu hóa, trị cảm cúm rất hiệu quả.', 31, 4, '2021-07-16'),
(50, ' Trà Chanh Dâu Tây Balo', 30000, 10, 'product017.jpeg', 'Trà chanh là sự kết hợp hoàn hảo của trà, chanh và đường tạo nên thức uống chua, ngọt và đăng đắng có hậu của trà. Không chỉ là thức uống độc đáo, trà chanh cũng có tác dụng tích cực cho sức khỏe. Trong trà chanh có chất chống oxy hóa giúp ngăn ngừa ung thư, bảo vệ làn da, chống lão hóa. Bên cạnh đó, vitamin C được bổ sung trong trà chanh giúp thải độc, làm sạch cơ thể tốt và tốt cho hệ tiêu hóa, trị cảm cúm rất hiệu quả.', 31, 20, '2021-07-16'),
(51, 'Quất Lắc Sữa Bạc Hà', 30000, 5, 'product018.jpeg', 'Trà Quất là sự kết hợp hoàn hảo của Sữa, Quất và Đường tạo nên thức uống chua, ngọt và đăng đắng có hậu của trà. Không chỉ là thức uống độc đáo, trà chanh cũng có tác dụng tích cực cho sức khỏe. Trong trà chanh có chất chống oxy hóa giúp ngăn ngừa ung thư, bảo vệ làn da, chống lão hóa. Bên cạnh đó, vitamin C được bổ sung trong trà chanh giúp thải độc, làm sạch cơ thể tốt và tốt cho hệ tiêu hóa, trị cảm cúm rất hiệu quả.', 31, 10, '2021-07-16'),
(53, ' Nước chanh leo', 30000, 5, 'product020.jpeg', 'Nước Chanh Leo là sự kết hợp hoàn hảo của trà, chanh leo và đường tạo nên thức uống chua, ngọt và đăng đắng có hậu của trà. Không chỉ là thức uống độc đáo, trà chanh cũng có tác dụng tích cực cho sức khỏe. Trong trà chanh có chất chống oxy hóa giúp ngăn ngừa ung thư, bảo vệ làn da, chống lão hóa. Bên cạnh đó, vitamin C được bổ sung trong trà chanh giúp thải độc, làm sạch cơ thể tốt và tốt cho hệ tiêu hóa, trị cảm cúm rất hiệu quả.', 31, 64, '2021-07-16'),
(55, ' Pepsi Lon', 12000, 5, 'product022.jpeg', 'Nước uống có gas giúp bạn có tinh thần sảng khoái tràn đầy năng lượng và giúp bạn ngon miệng trong mỗi bữa ăn', 31, 8, '2021-07-16'),
(56, ' Kimbap Chiên', 40000, 10, 'product023.jpeg', 'Với kimbap truyền thống đã ngon thì giờ đây có thêm món kimbap chiên giòn đang khiến cho nhiều tín đồ mê mẫn. Vị giòn giòn của lớp bột chiên xù bên ngoài cùng với hương vị thơm ngon sẵn có của kimbap mang đến cho mọi người một món ăn độc đáo và lạ miệng...', 30, 10, '2021-07-16'),
(57, 'Bánh Mỳ Thịt Xiên Xúc Xích', 30000, 10, 'product024.jpeg', 'Bánh Mỳ là một loại đồ ăn rất phổ biến của Việt Nam, bao gồm vỏ là một ổ bánh mì nướng có da giòn, ruột mềm; bên trong là phần nhân. Tuỳ theo hương vị vùng miền hoặc sở thích cá nhân mà người ta sẽ tạo thành những kiểu nhân khác nhau (thường là nhân chả lụa, thịt, cá, thực phẩm chay hoặc mứt trái cây... kèm theo một số nguyên liệu phụ khác như patê, bơ, rau, ớt, đồ chua...).[4] Bánh mì được xem là một loại thức ăn nhanh và bình dân dành cho buổi sáng, hoặc bất kỳ thời điểm nào trong ngày. Vì có giá thành phù hợp, nên món này được rất nhiều người ưa chuộng.[5]', 30, 27, '2021-07-16'),
(58, ' Bánh bao trứng muối ', 22000, 5, 'product025.jpeg', 'Bánh bao là bữa ăn sáng thường trực của mọi gia đình Việt Nam vì tính tiện lợi của nó. Vì vậy, để đảm bảo sức khỏe cho cả gia đình mình, các mẹ thường tìm một công thức làm bánh bao vừa đơn giản lại ngon miệng và cải biến lại theo khẩu vị của gia đình mình.\n\nBánh bao là loại bánh dễ ăn và ngon miệng. Bao bọc bên ngoài là lớp vỏ bánh xốp, mịn, ngọt, bên trong là nhân thịt trứng cút thơm ngon. Bánh bao có nguồn gốc từ Trung Quốc và được du nhập vào Việt Nam từ lâu. Người Việt đã rất khéo léo để biến tấu món bánh bao truyền thống Trung Quốc để phù hợp hơn với khẩu vị của mình.', 30, 24, '2021-07-16'),
(59, 'Nem Chua Rán', 40000, 10, 'product026.jpeg', 'Nem chua rán là một loại nem làm từ thịt lợn xay và bì lợn theo công thức cũng như quy trình khá gần gũi với nem chua và được rán vàng trong dầu ăn. Là đặc sản ẩm thực đường phố của Cần Thơ, món ăn vặt không chua mà béo ngậy và thơm ngon này hấp dẫn nhiều giới, đặc biệt là các bạn trẻ', 30, 8, '2021-07-16'),
(61, 'Bạc Xỉu', 22000, 5, 'product028.jpeg', 'Bạc xỉu là một loại đồ uống được làm từ cà phê có pha sữa nhưng phần sữa sẽ nhiều hơn so với phần cà phê. Từ “bạc xỉu” xuất phát từ tiếng Quảng Đông và được dùng phổ biến trong khu vực buôn bán ở Sài Gòn - Chợ lớn lúc bấy giờ.', 31, 2, '2021-07-28'),
(62, 'Trà Quất Nho Rừng', 30000, 10, 'product029.jpeg', ' Hay còn gọi là trà quất được hình thành dựa trên sự kết hợp hoàn hảo giữa nước quất, đường tạo nên thức uống được nhiều người yêu thích. Trong quả tắc (hay quất) chứa hàm lượng lớn vitamin C, chất xơ cùng các axit amin rất có lợi cho cơ thể. Đặc biệt nó phòng ngừa chứng tiểu đường, hỗ trợ giảm cân, giúp tiêu hóa, thanh nhiệt giải độc và làm đẹp da... Chính vì vậy, trà tắc được bày bán nhiều trên các đường phố với kích thước khổng lồ, to nhỏ cùng cách \"mix\" các vị hoa quả gây sốt trong giới trẻ. ', 31, 8, '2021-07-28'),
(63, 'Trà Chanh Kiwi', 35000, 10, 'product030.jpeg', 'Trà kiwi kết hợp cùng chanh leo là một món đồ uống được nhiều khách hàng yêu thích lựa chọn. Cái hương vị chua chua ngọt ngọt hòa quyện vào nhau khiến bao người say đắm. Ngoài để giải khát thì trà kiwi chanh leo còn đem đến nhiều lợi ích sức khỏe cho người thưởng thức.\n\nKiwi và chanh leo chứa nhiều loại vitamin, khoáng chất, giúp tăng cường hệ miễn dịch, tốt cho  hệ tiêu hóa và làm đẹp da. Với hương thơm cuốn hút của chanh leo cùng vị chua thanh từ kiwi sẽ khiến cho món đồ uống này “làm mưa làm gió” ở quán của bạn cho mà xem.', 31, 2, '2021-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL COMMENT 'Mã Vai trò',
  `nameRole` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên Vai trò'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `nameRole`) VALUES
(1, 'Nhân Viên'),
(2, 'Khách Hàng');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id_size` int(11) NOT NULL,
  `size1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id_size`, `size1`, `size2`, `size3`) VALUES
(1, 'S', 'M', 'L'),
(2, 'Combo', '', ''),
(3, 'Phần', '', ''),
(4, 'Cái', '', ''),
(5, 'Lon', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id_silde` int(11) NOT NULL COMMENT 'mã slider',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url banner',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'đường link image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_silde`, `image`, `link`) VALUES
(11, 'banner001.jpg', 'http://localhost/PHP/DuAn1/Product_Detail/sanpham.php?id=47'),
(12, 'banner002.jpg', 'http://localhost/PHP/DuAn1/Product_Detail/sanpham.php?id=47'),
(14, 'banner-web01.png', 'http://localhost/PHP/DuAn1/Product_Detail/sanpham.php?id=36');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL COMMENT 'mã trạng thái',
  `statusName` varchar(200) NOT NULL COMMENT 'tên trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `statusName`) VALUES
(1, 'Đang xử lý'),
(2, 'Đang lên đơn'),
(3, 'Đang giao hàng'),
(4, 'Đã giao hàng'),
(5, 'Thành Công'),
(6, 'Thất Bại');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `userName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passWord` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Số Điện Thoại',
  `fullName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Họ và Tên',
  `isAdmin` bit(1) NOT NULL,
  `id_role` int(11) NOT NULL COMMENT 'Mã Vai Trò',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'avata',
  `adress` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa Chỉ',
  `disabled` bit(1) NOT NULL COMMENT 'Cấm truy cập'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `userName`, `passWord`, `email`, `phone`, `fullName`, `isAdmin`, `id_role`, `image`, `adress`, `disabled`) VALUES
(5, 'admin', '202cb962ac59075b964b07152d234b70', 'vodinh2000ht@gmail.com', '+84329766459', 'Võ Văn Định', b'1', 1, 'avata_emty.png', 'Cao đẳng FPT, Trịnh Văn Bô, Hưng Lợi, Ninh Kiều', b'0'),
(48, 'tuan', '202cb962ac59075b964b07152d234b70', 'tuan1234@gmail.com', '0329766459', 'Trần Quốc Tuấn', b'0', 1, '728.jpg', '3 tháng 2, Mỹ Đình, Hưng Lợi, Ninh Kiều', b'0'),
(50, 'thanh1501', '202cb962ac59075b964b07152d234b70', 'vodinh2000hn@gmail.com', '', '', b'0', 2, 'avata_emty.png', '', b'0'),
(51, 'vodinh2', '202cb962ac59075b964b07152d234b70', 'vodinh2000sub@gmail.com', '', '', b'0', 2, 'avata_emty.png', '', b'0'),
(52, 'Trọng Anh', '4a7d1ed414474e4033ac29ccb8653d9b', 'maihoanganh2511@gmail.com', '', '', b'1', 2, 'avata_emty.png', '', b'0'),
(61, 'userD', '202cb962ac59075b964b07152d234b70', 'userD@gmail.com', '', '', b'0', 2, 'avata_emty.png', '', b'0'),
(67, 'dinhvvph13024', 'c7d9bd376f28f62f0f2279e366691986', 'dinhvvph13024@fpt.edu.vn', '0329766459', 'Trần Trọng Anh', b'0', 2, 'avata_emty.png', '167 Nguyễn Trãi, Thanh Xuân, Cần Thơ', b'0'),
(68, 'tuanhehe123222ggđ', '202cb962ac59075b964b07152d234b70', 'vodinh200ht@gmail.com', '', '', b'1', 1, 'TAM GIANG .png', '', b'0'),
(69, 'ff', '202cb962ac59075b964b07152d234b70', 'fff@gmail.com', '', '', b'1', 1, 'Thư mục 1.png', '', b'0'),
(70, 'ww', '202cb962ac59075b964b07152d234b70', 'vodinh2t@gmail.com', '', '', b'1', 2, 'quiz 4 + 5.png', '', b'0'),
(71, 'tuaww', '202cb962ac59075b964b07152d234b70', 'vodinh200ddff0ht@gmail.com', '', '', b'0', 2, 'topic3.png', '', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idCart`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `idCartDetail` (`idCartDetail`);

--
-- Indexes for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`),
  ADD KEY `id_size` (`id_size`);

--
-- Indexes for table `codediscount`
--
ALTER TABLE `codediscount`
  ADD PRIMARY KEY (`idCode`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`idFeeback`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id_information`);

--
-- Indexes for table `location_district`
--
ALTER TABLE `location_district`
  ADD PRIMARY KEY (`districtid`),
  ADD KEY `provinceid` (`provinceid`);

--
-- Indexes for table `location_province`
--
ALTER TABLE `location_province`
  ADD PRIMARY KEY (`provinceid`);

--
-- Indexes for table `location_ward`
--
ALTER TABLE `location_ward`
  ADD PRIMARY KEY (`wardid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `oderdetail`
--
ALTER TABLE `oderdetail`
  ADD PRIMARY KEY (`id_oderDetail`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`idOder`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `status` (`status`),
  ADD KEY `id_oderDetail` (`id_oderDetail`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_silde`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `unique_userName` (`userName`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã oder', AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã order chi tiết', AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã loại sản phẩm', AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `codediscount`
--
ALTER TABLE `codediscount`
  MODIFY `idCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Bình Luận', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `idFeeback` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã phản hồi', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id_information` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Thông Báo', AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `oderdetail`
--
ALTER TABLE `oderdetail`
  MODIFY `id_oderDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `orderr`
--
ALTER TABLE `orderr`
  MODIFY `idOder` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã đơn hàng', AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã sản phẩm', AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Vai trò', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_silde` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã slider', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã trạng thái', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`idUser`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idCartDetail`) REFERENCES `cartdetail` (`id_cartDetail`);

--
-- Constraints for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`);

--
-- Constraints for table `codediscount`
--
ALTER TABLE `codediscount`
  ADD CONSTRAINT `codediscount_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`idUser`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id_product`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `location_district`
--
ALTER TABLE `location_district`
  ADD CONSTRAINT `location_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `location_province` (`provinceid`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `oderdetail`
--
ALTER TABLE `oderdetail`
  ADD CONSTRAINT `oderdetail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `orderr`
--
ALTER TABLE `orderr`
  ADD CONSTRAINT `orderr_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`),
  ADD CONSTRAINT `orderr_ibfk_4` FOREIGN KEY (`status`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `orderr_ibfk_5` FOREIGN KEY (`id_oderDetail`) REFERENCES `oderdetail` (`id_oderDetail`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

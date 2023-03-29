<?php
include("header.php");
?>

<link rel="stylesheet" href="css/products.css">

<?php
// Kiểm tra biến $_GET["search"] có tồn tại hay không
if (isset($_GET["search"])) {
  // Lấy từ khóa tìm kiếm từ người dùng
  $search = $_GET["search"];

  // Tạo kết nối đến cơ sở dữ liệu
  $conn = mysqli_connect("localhost", "root", "", "website_aio");

  // Kiểm tra kết nối
  if ($conn->connect_error) {
    die("Kết nối không thành công: " . $conn->connect_error);
  }

  // Thực hiện truy vấn SQL với LIKE
  $sql = "SELECT * FROM sanpham WHERE name LIKE '%$search%' OR description LIKE '%$search%'";
  $result = $conn->query($sql);


  // Kiểm tra kết quả truy vấn
  if ($result->num_rows > 0) {

    // Mở thẻ HTML để hiển thị danh sách sản phẩm
    echo "<ul class='product-list container-product-page'>";
    // Xuất dữ liệu từng hàng
    while ($row = $result->fetch_assoc()) {
      echo "<li class='product-item'>";
      // echo "<h3 class='product-name'>" . $row["name"] . "</h3>";
      echo "<img class='product-image' src='" . $row["image"] . "' alt='Image of " . $row["name"] . "'>";
      echo "<p class='product-price'>Giá: " . $row["price"] . "</p>";
      echo "<p class='product-name'>Mô tả: " . $row["description"] . "</p>";
      echo "<button class='btn-add-to-cart'>Thêm vào giỏ hàng</button>";
      echo "</li>";
    }
    // Đóng thẻ HTML của danh sách sản phẩm
    echo "</ul>";
  }


  // Đóng kết nối
  $conn->close();
} else {
  echo "Vui lòng nhập từ khóa tìm kiếm!";
}
?>
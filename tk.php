<?php
include("header.php");
?>

<link rel="stylesheet" href="css/timkiem.css">

<?php
// Kiểm tra biến $_GET["search"] có tồn tại hay không
if (isset($_GET["search"])) {
  $search = $_GET["search"];
  $conn = mysqli_connect("localhost", "root", "", "website_aio");
  if ($conn->connect_error) {
    die("Kết nối không thành công: " . $conn->connect_error);
  }
  $sql = "SELECT * FROM tbl_product WHERE product_name LIKE '%$search%' OR product_description LIKE '%$search%'";
  $result = $conn->query($sql);
  if ($result && $result->num_rows > 0) {

    echo "<h3 class='heading-search--tk'>Kết quả tìm kiếm cho:". " <span>" .$search ."</span>" ."</h3>";
    echo "<ul class='product-list container-product-page'>";
    while ($row = $result->fetch_assoc()) {
      echo "<li class='product-item'>";
      
     
      echo "<img class='product-image' src='" . $row["product_image"] . "' alt='Image of " . $row["product_name"] . "'>";
      echo "<p class='product-price'>" . "<span>" . $row["product_price"] . "</span>" . "</p>";
      echo "<p class='product-name'>" . $row["product_name"] . "</p>";
      echo "<p class='product-description'>Mô tả: " . $row["product_description"] . "</p>";
      echo "<button class='btn-add-to-cart'>Thêm vào giỏ hàng</button>";
      echo "</li>";
    }
    echo "</ul>";
  } else {

    echo " <h3 class='else-heading-search'>Không có sản phẩm bạn muốn tìm, hãy thử lại ^^</h3>";
  }
  $conn->close();
} else {
  echo "Vui lòng nhập từ khóa tìm kiếm!";
}

?>










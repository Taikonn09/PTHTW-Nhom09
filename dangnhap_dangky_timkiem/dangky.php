<div class="form">
    <h2>Đăng ký</h2>
    <form id="registerForm" method="POST" action="dangky.php">
        <label for="regUsername">Tên đăng nhập:</label>
        <input type="text" id="regUsername" name="regUsername" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="regPassword">Mật khẩu:</label>
        <input type="password" id="regPassword" name="regPassword" required>

        <label for="confirmPassword">Xác nhận mật khẩu:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required>
        
        <button class="submit-btn-singup" type="submit">Đăng ký</button>
    </form>

    <p class="heading-singup-page">Chọn đăng ký, bạn đã đồng ý <a href="#">Chính sách bảo mật</a> và <a href="#">Điều khoản sử dụng</a> của chúng tôi. Bạn cũng chấp nhận rằng bạn biết rằng dữ liệu của bạn sẽ được lưu trữ.</p>

    <p class="heading-login-signup">Bạn đã có tài khoản? <a href="dangnhap.html">Đăng nhập</a></p>
</div>

<?php

// Kết nối tới cơ sở dữ liệu
$conn = mysqli_connect("localhost", "root", "", "sanpham");
// Kiểm tra kết nối
if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
}

// Lấy dữ liệu từ form đăng ký
$username = $_POST['regUsername'];
$email = $_POST['email'];
$password = $_POST['regPassword'];

// Kiểm tra xem tên đăng nhập đã tồn tại trong cơ sở dữ liệu chưa
$sql_check_user = "SELECT * FROM users WHERE username = '$username'";
$result_check_user = mysqli_query($conn, $sql_check_user);

if (mysqli_num_rows($result_check_user) > 0) {
    // Nếu tên đăng nhập đã tồn tại, hiển thị thông báo lỗi
    echo "Tên đăng nhập đã tồn tại";
} else {
    // Nếu tên đăng nhập chưa tồn tại, thêm thông tin người dùng vào cơ sở dữ liệu
    $sql_add_user = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password')";
    $result_add_user = mysqli_query($conn, $sql_add_user);

    if ($result_add_user) {
        // Nếu thêm thông tin người dùng thành công, hiển thị thông báo đăng ký thành công
        echo "Đăng ký thành công";
    } else {
        // Nếu thêm thông tin người dùng thất bại, hiển thị thông báo lỗi
        echo "Đăng ký thất bại";
    }
}

// Đóng kết nối
mysqli_close($conn);
?>


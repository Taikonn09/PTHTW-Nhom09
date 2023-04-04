
<link rel="stylesheet" href="css/dangky.css">

<?php
$conn = mysqli_connect("localhost", "root", "", "website_aio");

// Kiểm tra kết nối
if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
}
// Kiểm tra xem đã submit form hay chưa
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Lấy dữ liệu từ form đăng ký
    $username = $_POST['user_name'] ?? '';
    $useremail = $_POST['user_email'] ?? '';
    $userpass = $_POST['user_pass'] ?? '';

    // Kiểm tra xem tên đăng nhập đã tồn tại trong cơ sở dữ liệu chưa
    $sql_check_user = "SELECT * FROM tbl_user WHERE user_name = '$username'";
    $result_check_user = mysqli_query($conn, $sql_check_user);

    if (mysqli_num_rows($result_check_user) > 0) {
        // Nếu tên đăng nhập đã tồn tại, hiển thị thông báo lỗi
        echo "Tên đăng nhập đã tồn tại";
    } else {
        // Nếu tên đăng nhập chưa tồn tại, thêm thông tin người dùng vào cơ sở dữ liệu
        $sql_add_user = "INSERT INTO tbl_user (user_name, user_email, user_pass, user_role) VALUES ('$username', '$useremail', '$userpass', '0')";
        $result_add_user = mysqli_query($conn, $sql_add_user);

        if ($result_add_user) {
            // Nếu thêm thông tin người dùng thành công, hiển thị thông báo đăng ký thành công
            echo "Đăng ký thành công";
            header('location: dangnhap.php');
        } else {
            // Nếu thêm thông tin người dùng thất bại, hiển thị thông báo lỗi
            echo "Đăng ký thất bại";
        }
    }
}
// Đóng kết nối
mysqli_close($conn);
?>
<?php
include "header.php"
?>
<?php
echo "<title>Đăng ký | AIO office</title>"
?>


<div class="form">
    <h2>Đăng ký</h2>
    <form id="signup-form" method="POST" action="dangky.php">
        <label for="user_name">Tên đăng nhập:</label>
        <input require type="text" id="user_name" name="user_name" required>

        <label for="user_email">Email:</label>
        <input type="email" id="user_email" name="user_email" required>

        <label for="user_pass">Mật khẩu:</label>
        <input require type="password" id="user_pass" name="user_pass" required>

        <label for="confirm_pass">Xác nhận mật khẩu:</label>
        <input type="password" id="confirm_pass" name="confirm_pass" required>

        <button class="submit-btn-singup" type="submit">Đăng ký</button>
    </form>

    <p class="heading-singup-page">Chọn đăng ký, bạn đã đồng ý <a href="#">Chính sách bảo mật</a> và <a href="#">Điều khoản sử dụng</a> của chúng tôi. Bạn cũng chấp nhận rằng bạn biết rằng dữ liệu của bạn sẽ được lưu trữ.</p>

    <p class="heading-login-signup">Bạn đã có tài khoản? <a href="dangnhap.php">Đăng nhập</a></p>
</div>

<?php
    include "footer.php";
?>

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
<link rel="stylesheet" href="css/dangky.css">

<div class="form">
    <h2>Đăng ký</h2>
    <form id="registerForm" method="POST" action="dangky.php">
        <label for="regUsername">Tên đăng nhập:</label>
        <input type="text" id="regUsername" name="regUsername" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="regPassword">Mật khẩu:</label>
        <div class="password-field">
            <input type="password" id="regPassword" name="regPassword" required>
            <span class="toggle-password-1" onclick="togglePasswordVisibility()"><i class="fas fa-eye-slash"></i></span>
        </div>

        <label for="confirmPassword">Xác nhận mật khẩu:</label>
        <div class="password-field">
            <input type="password" id="confirmPassword" name="confirmPassword" required>
            <span class="toggle-password-2" onclick="togglePasswordVisibility()"><i class="fas fa-eye-slash"></i></span>
        </div>
        
        <button class="submit-btn-singup" type="submit">Đăng ký</button>
    </form>

    <p class="heading-singup-page">Chọn đăng ký, bạn đã đồng ý <a href="#">Chính sách bảo mật</a> và <a href="#">Điều khoản sử dụng</a> của chúng tôi. Bạn cũng chấp nhận rằng bạn biết rằng dữ liệu của bạn sẽ được lưu trữ.</p>

    <p class="heading-login-signup">Bạn đã có tài khoản? <a href="dangnhap.html">Đăng nhập</a></p>
</div>

<?php
    include "footer.php";
?>
<script>
function togglePasswordVisibility(fieldId, toggleButtonClass) {
    const passwordField = document.getElementById(fieldId);
    const toggleButton = document.querySelector(`.${toggleButtonClass}`);

    if (passwordField.type === "password") {
        passwordField.type = "text";
        toggleButton.innerHTML = '<i class="fas fa-eye"></i>' ;
    } else {
        passwordField.type = "password";
        toggleButton.innerHTML = '<i class="fas fa-eye-slash"></i>';
    }
}

// call togglePasswordVisibility function for password field and toggle button 1
document.querySelector(".toggle-password-1").addEventListener("click", function() {
    togglePasswordVisibility("regPassword", "toggle-password-1");
});

// call togglePasswordVisibility function for password field and toggle button 2
document.querySelector(".toggle-password-2").addEventListener("click", function() {
    togglePasswordVisibility("confirmPassword", "toggle-password-2");
});



</script>
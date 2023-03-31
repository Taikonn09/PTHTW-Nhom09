
<link rel="stylesheet" href="css/dangnhap.css">

<div class="form">
        <h2>Đăng nhập</h2>
        <form id="loginForm" onsubmit="return login()" method="POST">
            <div>
                <label for="username">Tên đăng nhập:</label>
                <input type="text" id="username" name="user_name" required>

                <label for="password">Mật khẩu:</label>
                <input type="password" id="password" name="user_pass" required>
            </div>

            <div class="pass-page">
                <div class="checkbox-pass">
                    <input class="check-left" type="checkbox" id="check" name="check">
                    <p class="check-right">Ghi nhớ mật khẩu</p>
                </div>

                <div class="forget-pass">
                    <a style="cursor: pointer;" onclick="future()">Bạn quên mật khẩu?</a>
                    
                </div>
            </div>
            <button class="submit-btn-login" type="submit" name="login" >Đăng nhập</button>


            <p class="sign-up-page">Bạn chưa có tài khoản? <a href="dangky.html">Đăng ký</a></p>
        </form>
    </div>

    <p class="heading-login-page">Bạn cần hỗ trợ? liên hệ với chúng tôi qua SĐT: <span>01234567</span> hoặc email: <a style="text-decoration: none; color: #ff4a4a " href="mailto:abc@gmail.com">abc@gmail.com</a></p>
    <?php
// Lấy thông tin đăng nhập từ người dùng
// Kiểm tra nếu có dữ liệu submit đi
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['user_name'];
    $password = $_POST['user_pass'];

    // Kết nối cơ sở dữ liệu
    $conn = mysqli_connect('localhost', 'root', '', 'website_aio');

    // Kiểm tra kết nối
    if (!$conn) {
        die("Kết nối thất bại: " . mysqli_connect_error());
    }

    // Thực hiện truy vấn kiểm tra tài khoản
    $sql = "SELECT * FROM tbl_user WHERE user_name = '$username' AND user_pass = '$password'";
    $result = mysqli_query($conn, $sql);

    // Kiểm tra kết quả truy vấn
    if (mysqli_num_rows($result) > 0) {
        // Tài khoản đăng nhập đúng
        echo "Đăng nhập thành công";
        header("Location: index.html");
        exit;
    } else {
        // Tài khoản đăng nhập sai
        echo "Sai tài khoản hoặc mật khẩu ^^";
    }

    // Đóng kết nối
    mysqli_close($conn);
}
?>


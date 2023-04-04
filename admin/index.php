<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Trang quản trị | AIO</title>
</head>
<body>
    <fieldset class="form">
        <legend> <h2>Vui lòng đăng nhập</h2></legend>
        <form id="loginForm" onsubmit="return login()" method="POST">
            <div>
                <label class="login-text" for="username">Tên đăng nhập:</label> <br>
                <input type="text" id="username" name="user_name" required><br>

                <label class="login-text" for="password">Mật khẩu:</label><br>
                <input type="password" id="password" name="user_pass" required>
            </div>
            <button class="submit-btn-login" type="submit" name="login" >Đăng nhập</button>
        </form>
    </fieldset>
</body>

<?php
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
        $row = mysqli_fetch_assoc($result);

        // Kiểm tra user_role của tài khoản
        if ($row['user_role'] == 1) {
            // Tài khoản có quyền truy cập, thực hiện đăng nhập
            echo "Đăng nhập thành công";
            header("location: trangchu.php");
        } else {
            // Tài khoản không có quyền truy cập
            echo "Tài khoản không có quyền truy cập";
        }
    } else {
        // Tài khoản đăng nhập sai
        echo "Sai tài khoản hoặc mật khẩu";
    }

    // Đóng kết nối
    mysqli_close($conn);
}
?>

<style>
    .form{
        width: 500px;
        margin: 150px auto;
        align-items: center;
    }
    .login-text{
        font-size: 16px;
    }
</style>

</html>
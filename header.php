<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/trangchu.css">
    <link rel="stylesheet" href="css/cart.css">
</head>

<body>
    <header id="header-page" #header-page>
        <article class="header-top container-page">
            <section class="header-top-items">
                <p class="header-top--item">
                    <i class="fa-regular fa-clipboard"></i>
                    Nhận báo giá rẻ hơn
                </p>

                <a class="header-top--item" href="blog.html">
                    <i class="fab fa-chromecast"></i>
                    Blog
                </a>

                <a class="header-top--item" href="chinhsach.html">
                    <i class="fa-solid fa-fire-flame-curved"></i>
                    Chính sách ưu đãi
                </a>

                <a class="header-top--item" href="dangnhap.php">
                    <i class="fa-solid fa-right-to-bracket"></i>
                    Đăng Nhập
                </a>

                <a class="header-top--item" href="dangky.php">
                    <i class="fa-sharp fa-solid fa-user-plus"></i>
                    Đăng Ký
                </a>
            </section>
        </article>

        <article class="header-mid container-page">
            <section class="logo-page">
                <a href="index.html">
                    <img style="width: 90px" src="images/logo.jpg" alt="logo">
                </a>
            </section>

            <section class="search-page">
                <form class="search-box" action="tk.php" method="get">
                    <input require type="text" name="search" class="search-text" placeholder="Nhập sản phẩm cần tìm cần tìm...">
                    <button class="search-btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </section>

            <section class="logo-page">

            </section>

            <section class="shopping-cart-page">
                <a class="shopping-cart" onclick="showCart()"><i class="fa-solid fa-cart-shopping"></i></a>

                <div id="show-cart" style="display: none">
                    <table>
                        <thead>
                            <tr>
                                <th>Giỏ hàng của bạn</th>
                            </tr>
                        </thead>
                        <tbody id="mycart">

                        </tbody>

                        <tfoot>
                            <button onclick="locationPayPage()" class="location-pay" type="submit">Đặt hàng</button>
                        </tfoot>
                    </table>
                </div>
            </section>

        </article>

        <article class="header-bot container-page">
            <nav id="nav-items">
                <li class="nav-item"><a href="biahoso.html">Bìa hồ sơ</a></li>
                <li class="nav-item"><a href="tapvo.html">Tập vở</a></li>
                <li class="nav-item"><a href="butbi.html">Bút bi</a></li>
                <li class="nav-item"><a href="so.html">Sổ</a></li>
                <li class="nav-item"><a href="bangkeo.html">Băng keo</a></li>
                <li class="nav-item"><a href="bangten-daydeo.html">Bảng tên - Dây đeo</a></li>
                <li class="nav-item"><a href="butchigo.html">Bút chì gỗ</a></li>
                <li class="nav-item"><a href="hopdaumucdau.html">Hộp dấu-mực dấu</a></li>
            </nav>
        </article>
    </header>

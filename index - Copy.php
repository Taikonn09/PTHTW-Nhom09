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
    <title>Trang Chủ | AIO office</title>
</head>

<body>
    <header id="header-page" #header-page>
    <div class="subsystem">
          <div class="social_network">
            <a href="https://www.facebook.com/dinhvo322k" target="_blank"><i class="fab fa-facebook-f"></i></a>
            <a href="https://www.instagram.com/dinh20ht/" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://www.facebook.com/dinhvo322k" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="https://vt.tiktok.com/ZSJX9msda" target="_blank"><i class="fab fa-tiktok"></i></a>
          </div>
          <?php disAdmin(0)?>
          <div class="account">
            <span class="notification">
              <i class="fas fa-bell" onclick="showNotification()"></i>
                <sub><?php
                    if (isset($_SESSION['user'])) {
                      showCountNotification($_SESSION['user']['idUser']);
                    } else {
                      echo 0;
                    } 
                  ?></sub>
            <div class="show_Notification">
              <ul>
                <?php if (isset($_SESSION['user'])) {
                  showNotification($_SESSION['user']['idUser']);
                } else {
                  echo "<h4>Không có thông báo nào !</h4>";
                } ?>
              </ul>
            </div>
            </span>
            <?php disLogin(0)?>
          </div>
        </div>
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
                    <input required type="text" name="search" class="search-text" placeholder="Nhập sản phẩm cần tìm cần tìm...">
                    <button class="search-btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </section>

            <section class="cart-page">
                <a href="cart.php"><i class="fa-solid fa-cart-plus"></i></a>
            </section>

            <section class="shopping-cart-page">
                <a class="shopping-cart" onclick="showCart()">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <p id="lenght-cart">0</p>
                </a>

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
                            <button class="location-pay" type="submit">Đặt hàng</button>
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

    <main id="main" #main>
        <div class="background-banner">
            <article class="banner-page container-page">
                <section class="banner-left">
                    <div class="slideshow-container">
                        <div class="slide active">
                            <img src="images/trangchu/banner1.png">
                        </div>
                        <div class="slide">
                            <img src="images/trangchu/banner2.png">
                        </div>
                        <div class="slide">
                            <img src="images/trangchu/banner3.jpeg">
                        </div>
                    </div>
                </section>

                <section class="banner-right" #danhmucsp>
                    <div class="right-top">
                        <img src="images/banner-right1.png" alt="banner-right-top">
                    </div>

                    <div class="right-bottom">
                        <img src="images/banner-right2.png" alt="banner-right-bottom">
                    </div>
                </section>
            </article>
        </div>

        <article class="table-products container-page">
            <table id="products">
                <tr>
                    <th>
                        <a href="biahoso.html">
                            <img src="images/trangchu/products/biahoso.png" alt="">
                            <span class="prodcut-name"> Bìa hồ sơ</span>
                        </a>
                    </th>
                    <th>
                        <a href="tapvo.html">
                            <img src="images/trangchu/products/tapvo.png" alt="">
                            <span class="prodcut-name"> Tập vở</span>
                        </a>
                    </th>
                    <th>
                        <a href="butbi.html">
                            <img src="images/trangchu/products/butbi.png" alt="">
                            <span class="prodcut-name"> Bút bi</span>
                        </a>
                    </th>
                    <th>
                        <a href="so.html">
                            <img src="images/trangchu/products/so.png" alt="">
                            <span class="prodcut-name"> Sổ</span>
                        </a>
                    </th>
                    <th>
                        <a href="bangkeo.html">
                            <img src="images/trangchu/products/bangkeo.png" alt="">
                            <span class="prodcut-name"> Băng keo</span>
                        </a>
                    </th>
                    <th>
                        <a href="bangten-daydeo.html">
                            <img src="images/trangchu/products/bangten.png" alt="">
                            <span class="prodcut-name"> Bảng tên - Dây đeo</span>
                        </a>
                    </th>
                    <th>
                        <a href="butchigo.html">
                            <img src="images/trangchu/products/butchi.png" alt="">
                            <span class="prodcut-name"> Bút chì gỗ</span>
                        </a>
                    </th>
                    <th>
                        <a href="hopdaumucdau.html">
                            <img src="images/trangchu/products/hopdau.png" alt="">
                            <span class="prodcut-name"> Hộp dấu - Mực dấu</span>
                        </a>
                    </th>
                </tr>

                <tr>
                    <th>
                        <a href="">
                            <img src="images/trangchu/products/giay.png" alt="">
                            <span class="prodcut-name"> Giấy các loại</span>
                        </a>
                    </th>
                    <th>
                        <a href="">
                            <img src="images/trangchu/products/bamkim.png" alt="">
                            <span class="prodcut-name"> Bấm kim</span>
                        </a>
                    </th>
                    <th>
                        <a href="">
                            <img src="images/trangchu/products/maytinh.png" alt="">
                            <span class="prodcut-name"> Máy tính</span>
                        </a>
                    </th>
                    <th>
                        <a href="">
                            <img src="images/trangchu/products/thuoc.png" alt="">
                            <span class="prodcut-name"> Thước</span>
                        </a>
                    </th>
                    <th>
                        <a href="">
                            <img src="images/trangchu/products/kepgiay.png" alt="">
                            <span class="prodcut-name"> Kẹp giấy</span>
                        </a>
                    </th>
                    <th>
                        <a href="">
                            <img src="images/trangchu/products/butlong.png" alt="">
                            <span class="prodcut-name"> Bút lông</span>
                        </a>
                    </th>
                    <th>
                        <a href="">
                            <img src="images/trangchu/products/giaynote.png" alt="">
                            <span class="prodcut-name"> Giấy ghi nhớ</span>
                        </a>
                    </th>
                    <th>
                        <a href="">
                            <img src="images/trangchu/products/dungcukhac.png" alt="">
                            <span class="prodcut-name"> Dụng cụ khác</span>
                        </a>
                    </th>
                </tr>
            </table>
        </article>

        <article class="products container-page">
            <section class="section-product">
                <div class="name-product">
                    <h1 class="name-product">
                        Giấy - Kẹp giấy
                    </h1>

                    <a class="seemore-products" href="">
                        Xem thêm <i class="fa-solid fa-angles-right"></i>
                    </a>
                </div>
                <ul class="product-list">
                    <li class="product-item">
                        <a href="infomation-product.html">
                            <img class="item-image" src="images/trangchu/products/giay1.jpg" alt="Product image">
                        </a>
                        <p class="product-name">Thùng 5 RAM giấy excel định lượng 700g - 500 tờ</p>
                        <p class="product-price">$<span>5.00</span></p>
                        <button onclick="addToCart()" class="btn-add-to-cart">Thêm vào giỏ hàng</button>
                    </li>
                    <li class="product-item" data-key="2">
                        <img class="item-image" src="images/trangchu/products/giay1.jpg" alt="Product image">
                        <p class="product-name">Thùng 5 RAM giấy</p>
                        <p class="product-price">$<span>5.00</span></p>
                        <button onclick="addToCart()" class="btn-add-to-cart">Thêm vào giỏ hàng</button>
                    </li>
                    <li class="product-item" data-key="3">
                        <img class="item-image" src="images/trangchu/products/giay1.jpg" alt="Product image">
                        <p class="product-name">Thùng 10 RAM giấy excel định lượng 700g - 500 tờ</p>
                        <p class="product-price">$<span>10.00</span></p>
                        <button onclick="addToCart()" class="btn-add-to-cart">Thêm vào giỏ hàng</button>
                    </li>
                    <li class="product-item" data-key="4">
                        <img class="item-image" src="images/trangchu/products/giay1.jpg" alt="Product image">
                        <p class="product-name">Thùng 15 RAM giấy excel định lượng 700g - 500 tờ</p>
                        <p class="product-price">$<span>15.00</span></p>
                        <button onclick="addToCart()" class="btn-add-to-cart">Thêm vào giỏ hàng</button>
                    </li>

                </ul>
            </section>

            <section class="seemore">
                <a href="#main">Xem thêm các sản phẩm khác</a>
            </section>
        </article>
    </main>


    <footer id="footer-page">
        <div id="ft-top-page" class=" container-page">
            <p>Đăng ký để được nhận ngay những tin tức độc quyền về sự kiện hấp dẫn và chương trình khuyến mãi sắp diễn
                ra!</p>
            <form action="">
                <input style="outline: none;" class="submit-text-contact" type="text" placeholder="Email">
                <button class="submit-btn-contact" type="submit">Gửi</button>
            </form>
        </div>
        <div class="ft-mid-page container-page">
            <div style="width: 33%;  padding: 5px 0px;" id="ft-left">
                <h3>VĂN PHÒNG PHẨM AIO</h3>
                <p>Địa chỉ: Khu II, đường 3/2, Xuân Khánh, Ninh Kiều, Cần Thơ, Việt Nam</p>
                <p>Email: <a style="text-decoration: none;" href="mailto:abc@gmail.com">abc@gmail.com</a> </p>
                <p>Hotline: 01234567</p>
            </div>

            <div style="width: 33%; text-align: center;" id="ft-mid">
                <h3>LIÊN HỆ VỚI CHÚNG TÔI</h3>

                <div class="icon-contact">
                    <a href="">
                        <p><i class="fa-brands fa-facebook"></i> facebook</p>
                    </a>
                    <a href="">
                        <p><i class="fa-brands fa-youtube"></i> youtube</p>
                    </a>
                </div>
            </div>

            <div style="width: 33%; text-align: right;" id="ft-right">
                <h3>CHÍNH SÁCH</h3>
                <a href="#">Chính sách giao hàng</a>
                <a href="#">Chính sách đổi trả</a>
                <a href="#">Chính sách bảo mật</a>
            </div>
        </div>


        <div class="contact-map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15715.443719658673!2d105.774537!3d10.028333!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0895a51d60719%3A0x9d76b0035f6d53d0!2sCan%20Tho%20University!5e0!3m2!1sen!2sus!4v1679451898422!5m2!1sen!2sus"
                width="900" height="300" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

        <div class="container-page">
            <div id="ft-bottom">
                <p><span>&copy;</span>2023 AIO thuộc về nhóm 09</p>
            </div>
        </div>
    </footer>
    <button class="top-page-btn" onclick="scrollToTop()"><i class="fa-solid fa-chevron-up top-page-icon"></i></button>

    <script lang="javascript">var __vnp = {code : 18257,key:'', secret : '71b5694624c9e2cdd334c71d9fb86768'};(function() {var ga = document.createElement('script');ga.type = 'text/javascript';ga.async=true; ga.defer=true;ga.src = '//core.vchat.vn/code/tracking.js';var s = document.getElementsByTagName('script');s[0].parentNode.insertBefore(ga, s[0]);})();</script>
</body>
    <script src="js/index.js"></script>
    <script src="js/cart.js"></script>
</html>
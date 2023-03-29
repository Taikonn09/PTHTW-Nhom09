
<?php
    include('header.php');
    include('slider.php');
    include('class/product_class.php');
?>

<?php
    $product = new product;
    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $insert_product = $product -> insert_product($_POST, $_FILES);
        // var_dump($_POST, $_FILES);
        // echo '<prev>';
        // echo print_r($_FILES);
        // echo '</prev>';
    }
?>




        <div class="content-right">
            <div class="content-product-add">
                <h1>Thêm sản phẩm</h1> <br>
                <form class="form-content" action="" method="POST" enctype="multipart/form-data">
                    <div style="display: flex">
                        <div>
                            <label for="">Nhập tên sản phẩm <span style="color: red">*</span></label>
                            <input name="product_name" required type="text" placeholder="Nhập tên sản phẩm">
                            <label for="">Chọn danh mục<span style="color: red">*</span></label>
                            <select name="cartegory_id" id="">
                                <option value="">--Chọn--</option>
                                <?php
                                    $show_caregory = $product -> show_cartegory();
                                    if($show_caregory) {
                                        while($result = $show_caregory -> fetch_assoc()){
                                ?>
                                <option value="<?php echo $result['cartegory_id'] ?>"><?php echo $result['cartegory_name'] ?></option>
                                <?php
                                        }
                                    };
                                ?>
                            </select>

                            <label for="">Chọn loại sản phẩm <span style="color: red">*</span></label>
                            <select name="brand_id" id="">
                                <option value="">--Chọn--</option>
                                <?php
                                    $show_brand = $product -> show_brand();
                                    if($show_caregory) {
                                        while($result = $show_brand -> fetch_assoc()){
                                ?>
                                <option value="<?php echo $result['brand_id'] ?>"><?php echo $result['brand_name'] ?></option>
                                <?php
                                        }
                                    };
                                ?>
                            </select>
                        </div>
                        <div style="margin-left: 20px">
                            <label for="">Giá sản phẩm<span style="color: red">*</span></label>
                            <input name="product_price" require type="text" placeholder="Nhập giá sản phẩm">
                            <input name="product_price_new" require type="text" placeholder="Nhập giá khuyến mãi">
                        </div>
                    </div>

                    <label for="">Mô tả sản phẩm <span style="color: red">*</span></label> <br>
                    <textarea name="product_describe" require id="" cols="60" rows="5" placeholder="VD: kích thước, số lượng ..."></textarea>
                    <br>

                    <label for="">Hình ảnh sản phẩm<span style="color: red">*</span></label>
                    <input name="product_img" type="file">
                    <input name="product_img_describe" multiple type="file">
                    <button type="submit">Thêm</button>
                </form>
            </div>
        </div>
    </section>
</body>

</html>
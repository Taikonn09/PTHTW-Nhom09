<?php
include "header.php";
include "slider.php";
include "class/product_class.php"
?>

<?php
$product = new product;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $cartegory_id = $_POST['cartegory_id'];
    $brand_name = $_POST['brand_name'];
    $insert_brand = $brand->insert_brand($cartegory_id, $brand_name);
}
?>


<div class="content-right">
    <div class="content-product-add">
        <h1>Thêm sản phẩm</h1> <br>
        <form class="form-content" action="" method="POST" enctype="multipart/form-data">
            <div style="display: flex">
                <div>
                    <label for="">Nhập tên sản phẩm <span style="color: red">*</span></label>
                    <input required type="text" placeholder="Nhập tên sản phẩm">
                    <label for="">Chọn danh mục<span color="red">*</span></label>
                    <select name="" id="">
                        <option value="">--Chọn--</option>
                        <?php
                        $show_cartegory = $caregory->show_cartegory();
                        if ($show_cartegory) {
                            while ($result = $show_cartegory->fetch_assoc()) {
                        ?>
                            <option value="<?php echo $result['cartegory_id'] ?>"><?php echo $result['cartegory_name'] ?></option>
                        <?php
                            }
                        };
                        ?>
                    </select>

                    <label for="">Chọn loại sản phẩm <span style="color: red">*</span></label>
                    <select name="" id="">
                        <option value="">--Chọn--</option>
                        <?php
                        $show_brand = $brand -> show_brand();
                        if ($show_cartegory) {
                            while ($result = $show_brand -> fetch_assoc()) {
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
                    <input required type="text" placeholder="Nhập giá sản phẩm">
                    <input type="text" placeholder="Nhập giá khuyến mãi">
                </div>
            </div>

            <label for="">Mô tả sản phẩm <span style="color: red">*</span></label> <br>
            <textarea required name="" id="" cols="60" rows="5" placeholder="VD: kích thước, số lượng ..."></textarea>
            <br>

            <label for="">Hình ảnh sản phẩm<span style="color: red">*</span></label>
            <input type="file">
            <input multiple type="file">
            <button type="submit">Thêm</button>
        </form>
    </div>
</div>
</section>
</body>

</html>
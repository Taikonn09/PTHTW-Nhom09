

<main id="main-pay-page" class="container-pay">
        <section id="left-pay-page">
            <h2 class="heading-infomation">Thông tin thanh toán</h2>

            <form method="POST" action="thanhtoan.php">
                <label for="">Họ và Tên</label>
                <input type="text" placeholder="Nhập tên của bạn...">

                <div class="infomation">
                    <div class="infomation-left">
                        <label for="">Số điện thoại</label>
                        <input type="tel" placeholder="Nhập số điện thoại của bạn">
                    </div>

                    <div class="infomation-right">
                        <label for="">Email</label>
                        <input type="text" placeholder="Nhập email của bạn">
                    </div>
                </div>

                <div>
                    <div class="top-pay">
                        <div class="top-pay-left">
                            <label for="city">Tỉnh/Thành phố</label> <br>
                            <select name="city" id="city" onchange="filterCity(this.value)">
                                <option value="">-- Chọn tỉnh/Thành phố --</option>
                                <option value="">An Giang</option>
                                <option value="">Bà Rịa-Vũng Tàu</option>
                                <option value="">Bắc Giang</option>
                                <option value="">Bắc Kạn</option>
                                <option value="">Bạc Liêu</option>
                                <option value="">Bắc Ninh</option>
                                <option value="">Bến Tre</option>
                                <option value="">Bình Định</option>
                                <option value="">Bình Dương</option>
                                <option value="">Bình Phước</option>
                                <option value="">Bình Thuận</option>
                                <option value="">Cà Mau</option>
                                <option value="">Cao Bằng</option>
                                <option value="">Đắk Lắk</option>
                                <option value="">Đắk Nông</option>
                                <option value="">Điện Biên</option>
                                <option value="">Đồng Nai</option>
                                <option value="">Đồng Tháp</option>
                                <option value="">Gia Lai</option>
                                <option value="">Hà Giang</option>
                                <option value="">Hà Nam</option>
                                <option value="">Hà Tĩnh</option>
                                <option value="">Hải Dương</option>
                                <option value="">Hậu Giang</option>
                                <option value="">Hòa Bình</option>
                                <option value="">Hưng Yên</option>
                                <option value="">Khánh Hòa</option>
                                <option value=" ">Kiên Giang</option>
                                <option value="">Kon Tum</option>
                                <option value="">Lai Châu</option>
                                <option value="">Lâm Đồng</option>
                                <option value="">Lạng Sơn</option>
                                <option value="">Lào Cai</option>
                                <option value="">Long An</option>
                                <option value="">Nam Định</option>
                                <option value="">Nghệ An</option>
                                <option value="">Ninh Bình</option>
                                <option value="">Ninh Thuận</option>
                                <option value="">Phú Thọ</option>
                                <option value="">Quảng Bình</option>
                                <option value="">Quảng Nam</option>
                                <option value="">Quảng Ngãi</option>
                                <option value="">Quảng Ninh</option>
                                <option value="">Quảng Trị</option>
                                <option value="">Sóc Trăng</option>
                                <option value="">Sơn La</option>
                                <option value="">Tây Ninh</option>
                                <option value="">Thái Bình</option>
                                <option value="">Thái Nguyên</option>
                                <option value="">Thanh Hóa</option>
                                <option value="">Thừa Thiên Huế</option>
                                <option value="">Tiền Giang</option>
                                <option value="">Trà Vinh</option>
                                <option value="">Tuyên Quang</option>
                                <option value="">Vĩnh Long</option>
                                <option value="">Vĩnh Phúc</option>
                                <option value="">Yên Bái</option>
                                <option value="">Phú Yên</option>
                                <option value="">Cần Thơ</option>
                                <option value="">Đà Nẵng</option>
                                <option value="">Hải Phòng</option>
                                <option value="">Hà Nội</option>
                                <option value="">TP HCM</option>
                            </select> <br>
                        </div>

                        <div class="top-pay-right">
                            <label for="city">Quận/Huyện</label> <br>
                            <input name="city" id="city" onchange="filterCity(this.value)" placeholder="VD: Quận 18...">

                        </div>
                    </div>

                    <div class="bottom-pay">
                        <div class="bottom-pay-left">
                            <label for="city">Xã/Phường</label> <br>
                            <input name="city" id="city" onchange="filterCity(this.value)" placeholder="VD: Xã 19...">

                        </div>
                        <div class="bottom-pay-right">
                            <label for="">Số nhà/Đường</label> <br>
                            <input type="" name="" id="addrest" placeholder="VD: số 20 đường abc...">
                        </div>
                    </div>
                </div>
            </form>

            <div class="heading-import">
                <p style="color: #0170b9">Bạn muốn địa chỉ khác?</p>
                <p>
                    <label>
                        <input style="margin-right: 5px;" type="checkbox" id="show-addrest" onchange="showAddrest()">Bấm
                        vào đây
                    </label>
                </p>
                <p id="input-addrest" class="input-addrest" style="display:none;">
                    <label style="margin-top: 10px;" for="inputText">Nhập vào địa chỉ của bạn:</label>
                    <input type="text" id="inputText" placeholder="VD: Sô 21, đường abc">
                </p>
            </div>

            <div class="note-bill">
                <p>Ghi chú đơn hàng (tùy chọn)</p>
                <textarea name="" id="" cols="30" rows="10"></textarea>
            </div>
        </section>

        <section id="right-pay-page">
            <h2 class="heading-bill-cart">Đơn hàng của bạn</h2>
            <table>
                <thead>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Tạm tính</th>
                        <th>Tổng tiền</th>
                        <th>Giao hàng</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Áo phông</td>
                        <td>100,000đ</td>
                        <td>110,000đ</td>
                        <td style="text-align: left">
                            <input type="checkbox" name="shipping" value="standard">Giao hàng tiêu chuẩn<br>
                            <input type="checkbox" name="shipping" value="express">Giao hàng nhanh
                        </td>
                    </tr>
                    <tr>
                        <td>Quần jean</td>
                        <td>150,000đ</td>
                        <td>150,000đ</td>
                        <td style="text-align: left">
                            <input type="checkbox" name="shipping" value="standard">Giao hàng tiêu chuẩn<br>
                            <input type="checkbox" name="shipping" value="express">Giao hàng nhanh
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td>Tổng cộng: 260,000đ</td>
                    </tr>
                </tbody>
            </table>

            <div>
                <div>
                <h3 style="margin-bottom: 10px; color: #0170B9">Thỏa thuận mua hàng</label>
                </div>
                <!-- <input type="text" name="" id="" placeholder="Trả tiền mặt khi giao hàng"> -->
                <div style="border: none;">
                    <div class="pay-method">
                        <p>Thanh toán bằng tiền mặt (COD)</p>
                        <input style="margin-left: 57px" type="checkbox" name="shipping">
                    </div>
                    <div class="pay-method">
                        <p>Thanh toán qua thẻ của bạn</p>
                        <input type="checkbox" onchange="showBankCard()" id="show-bank-card">
                    </div>

                    <p id="input-bank-card" style="display: none">
                        <label style="margin-top: 10px;" for="inputText">Nhập số thẻ của bạn:</label>
                        <input type="text" id="inputText" placeholder="VD: 5623 84....">
                    </p>
                </div>
            </div>
            <div style="text-align: right;">
                <button class="checkout-btn" type="submit">Đặt hàng</button>
            </div>
        </section>
    </main>
<?php
session_start();
?>
<?php
	include "header.php";
?>
<body>
	<h1>Giỏ hàng</h1>
	<table>
		<thead>
			<tr>
				<th>Sản phẩm</th>
				<th>Đơn giá</th>
				<th>Số lượng</th>
				<th>Thành tiền</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<?php 
			if (isset($_SESSION['cart'])) {
				$total = 0;
				foreach ($_SESSION['cart'] as $item) {
					$subtotal = $item['product_price'] * $item['quantity'];
					$total += $subtotal;
					echo "<tr>";
					echo "<td>{$item['product_name']}</td>";
					echo "<td>{$item['product_price']}</td>";
					echo "<td>{$item['quantity']}</td>";
					echo "<td>{$subtotal}</td>";
					echo "<td><a href='remove-item.php?product_id={$item['product_id']}' class='btn-remove-item'>Xóa</a></td>";
					echo "</tr>";
				}
				echo "<tr>";
				echo "<td colspan='3' align='right'><strong>Tổng cộng:</strong></td>";
				echo "<td>{$total}</td>";
				echo "<td></td>";
				echo "</tr>";
			} else {
				echo "<tr><td colspan='5'>Giỏ hàng của bạn đang trống.</td></tr>";
			}
			?>
		</tbody>
	</table>
	<a href="checkout.php" class="btn-checkout">Thanh toán</a>

</body>
</html>

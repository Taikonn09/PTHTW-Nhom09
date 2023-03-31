
//ẩn hiện giỏ hàng
function showCart() {
  var x = document.getElementById("show-cart");
  if (x.style.display == "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}

// Lấy danh sách sản phẩm
let productList = document.querySelectorAll('.product-list .product-item');

// Lặp qua từng sản phẩm và thêm sự kiện click
productList.forEach(productItem => {
  let addToCartButton = productItem.querySelector('.btn-add-to-cart');
  addToCartButton.addEventListener('click', function () {
    // Kiểm tra xem sản phẩm đã có trong giỏ hàng hay chưa
    let cartItem = document.querySelector(`#mycart [data-id="${productItem.dataset.key}"]`);
    if (cartItem) {
      // Nếu sản phẩm đã có trong giỏ hàng, tăng số lượng sản phẩm
      //   let quantity = parseInt(cartItem.querySelector('.quantity').textContent) + 1;
      //   cartItem.querySelector('.quantity').textContent = quantity;
      alert('Sản phẩm đã tồn tại ^^');
    } else {
      // Nếu sản phẩm chưa có trong giỏ hàng, tạo một sản phẩm mới để thêm vào giỏ hàng
      let cartItem = document.createElement('tr');
      cartItem.classList.add('cart-item');
      cartItem.dataset.id = productItem.dataset.key;
      cartItem.innerHTML = `<td class="item-image"><img src="${productItem.querySelector('.item-image').src}" alt="Product image"></td>
                            <td class="product-name">${productItem.querySelector('.product-name').textContent}</td>
                            <td class="product-price">${productItem.querySelector('.product-price').innerHTML}</td>
                            <td class="quantity">
                            <button class="decrease-quantity">-</button>
                            <span>1</span>
                            <button class="increase-quantity">+</button>
                            </td>
                            <td class="remove-item"><button class="btn-remove-item">Xóa</button></td>`;
      // Thêm sản phẩm vào giỏ hàng
      let cartList = document.querySelector('#mycart');
      cartList.appendChild(cartItem);
      alert('Thêm sản phẩm thành công ^^')

      // Thêm sự kiện click cho button xóa sản phẩm
      let removeItemButton = cartItem.querySelector('.btn-remove-item');
      removeItemButton.addEventListener('click', function () {
        cartItem.remove();
        alert('Xóa sản phẩm thành công ^^');
      });

      // Thêm sự kiện click cho nút tăng giảm số lượng
let decreaseQuantityButton = cartItem.querySelector('.decrease-quantity');
let increaseQuantityButton = cartItem.querySelector('.increase-quantity');
let quantityElement = cartItem.querySelector('.quantity span');
let priceElement = cartItem.querySelector('.product-price span');

decreaseQuantityButton.addEventListener('click', function () {
  let quantity = parseInt(quantityElement.textContent);
  if (quantity > 1) {
    quantity--;
    quantityElement.textContent = quantity;
    let price = parseFloat(priceElement.textContent);
    let total = price * quantity;
    cartItem.querySelector('.product-price').innerHTML = '$<span>' + total.toFixed(2) + '</span>';
    updateCart();
  }
});

increaseQuantityButton.addEventListener('click', function () {
  let quantity = parseInt(quantityElement.textContent);
  quantity++;
  quantityElement.textContent = quantity;
  let price = parseFloat(priceElement.textContent);
  let total = price * quantity;
  cartItem.querySelector('.product-price').innerHTML = '$<span>' + total.toFixed(2) + '</span>';
  updateCart();
});

    }
  });
});



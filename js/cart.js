

//ẩn hiện giỏ hàng
function showCart() {
    var x = document.getElementById("show-cart");
    if (x.style.display == "block") {
        x.style.display = "none";
    } else {
        x.style.display = "block";
    }
}

//-----------------------------------


const btn = document.querySelectorAll("button");

btn.forEach(function(button,index){
    button.addEventListener("click",function(event){{
        var btnItem = event.target
        var product = btnItem.parentElement
        var productImg = product.querySelector("img").src
        var productName = product.querySelector("p").innerText
        var productPrice = product.querySelector("span").innerText
        
        addToCart(productImg,productName,productPrice)
    }})
})

function addToCart(productImg,productName,productPrice){
    var addtr = document.createElement("tr")
    var trcontent = '<tr data-id="1"><td><img style="width: 100px; height: 100px" src="'+productImg+'"></td><td>'+productName+'</td><td><input style="width: 20%" type="number" value="1" min="1" data-price="10"></td><td><p>'+productPrice+'</p></td><td><button class="btn-delete">Xóa</button></td></tr>'
    addtr.innerHTML = trcontent
    var cartTable = document.querySelector("tbody")
    cartTable.append(addtr)
    cartTotal() 
}

function cartTotal(){
    var cartItem = document.querySelectorAll("tbody tr")
    for (i=0; i<cartItem.lenght; i++){
        var inputValue = cartItem[i].querySelector("input")
        var productPrice = cartItem[i].querySelector("span")
        console.log(productPrice)
    }
 
}


document.getElementById("show-cart").style.display = "none"





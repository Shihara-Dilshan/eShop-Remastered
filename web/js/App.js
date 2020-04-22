/*(function(){
    
    
    document.addEventListener("DOMContentLoaded" , function(){
        
        
        
    });
    
    
    
    
})();

*/

//remove white spaces

function myTrim(x) {
  return x.replace(/\s/g, "");
}

//show and hide cart

function showCart() {
  var cart = document.getElementById("cart");
  var cartIcon = document.getElementById("cartIcon");

  cartIcon.addEventListener("click", function () {
    cart.classList.toggle("showCart");
    cart.classList.toggle("hideCart");
  });
}


showCart();

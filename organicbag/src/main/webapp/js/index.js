let menu = document.getElementById("menu-nav");
let iconCart = document.querySelector("#icon-cart");
let cart = document.querySelector("#cart");
let qtdItem = document.querySelector(".qtd-item");


//contador do carrinho
function countProduct(id) {
  
}

//evento para alterar background do menu de acordo com scroll
document.addEventListener("scroll", () => {
  var positionY = window.pageYOffset;

  menu.style.backgroundColor = positionY <= 700 ? "transparent" : "#8fa793";
});

//mostrar carrinho
iconCart.addEventListener("click", () =>{
  cart.classList.remove("hide");

});

//
qtdItem.addEventListener("click")
let menu = document.getElementById("menu-nav");
let iconCart = document.querySelector("#icon-cart");
let cart = document.querySelector("#cart");
let qtdItem = document.querySelector(".qtd-item");
let closeCart = document.querySelector("#close-cart");

//contador do carrinho
function countProduct(id) {
  
}

//evento para alterar background do menu de acordo com scroll
document.addEventListener("scroll", () => {
  var positionY = window.pageYOffset;

  menu.style.backgroundColor = positionY <= 700 ? "transparent" : "#8fa793";
});

//mostrar e fechar carrinho
iconCart.addEventListener("click", () => {cart.classList.remove("hide")});
closeCart.addEventListener("click", () => {cart.classList.add("hide")});


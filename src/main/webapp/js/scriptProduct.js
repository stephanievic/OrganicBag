/* TROCAR IMAGEM AO CLICAR*/
var imageMain = document.getElementById("img0");
let click = true;


let menu = document.getElementById("menu-nav");
const iconCart = document.querySelector("#icon-cart");
let cart = document.querySelector("#cart");
let qtdItem = document.querySelector(".qtd-item");
const closeCart = document.querySelector("#close-cart");
let countItem = document.getElementsByClassName("count-item");
let count = 1;

function trocar(imgTroca) {
    imageMain.setAttribute('src', imgTroca)
}


/* EXIBIR MAIS INFORMAÇÕES */
function moreInfo() {
    var desc = document.getElementById('descInicial');

    if(click) {
        desc.style.height = '300px'
        click = false
        document.getElementById('more-desc').innerText = 'menos informações'
        //more.innerHTML = 'menos informações'

    }else {
        desc.style.height = '100px'
        click = true
        //document.getElementById('more'.innerText('mais informações'))
        document.getElementById('more-desc').innerText = 'mais informações'
    }
}


/*COMPRAR PRODUTO*/
function buy() {
  alert('Produto adicionado ao carrinho!')

  document.forms["buy-product"].submit()
}
/*document.getElementById("button-buy").addEventListener("click", buy);

function buy() {
    var codeText = document.getElementById("code-product").textContent
    var code = codeText.match(/\d+/)

    alert('Produto adicionado ao carrinho!')

    var xhr = new XMLHttpRequest();

    xhr.open("GET", "buyProduct?code=" + code, true);

    xhr.onreadystatechange = function() {
      if(xhr.readyState == 4 && xhr.status == 200) {
        document.getElementById("product-cart").innerHTML = xhr.responseText;
      }
    }

    xhr.send();
} */

//const removeItem = document.querySelector(".remove-button");
//const addItem = document.querySelector(".add-button");


//contador do carrinho
function Main() {

  for(i = 0; i < countItem.length; i++){
    countItem[i].addEventListener("click", (e) => {
      //e.preventDefault();
      removeAddItem(e.currentTarget); 
     
    })
  }

  
  //mostrar e fechar carrinho
  iconCart.addEventListener("click", () => cart.classList.remove("hide"));
  closeCart.addEventListener("click", () => cart.classList.add("hide"));

}

document.addEventListener("DOMContentLoaded", function() {
  Main();

})

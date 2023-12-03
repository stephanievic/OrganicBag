var cart = document.querySelector("#cart")

let cartOpen = document.getElementById("cart")
let cartBox = document.getElementById('cart-box')

var close = document.querySelector("#close")

cart.addEventListener('click', function() {
    cartBox.style.display = 'flex'

    if(cartOpen.classList.contains('bi-cart3')) {
        cartOpen.style.position = 'absolute'
    }
})

close.addEventListener('click', function() {
    cartBox.style.display = 'none'
})

/*BARRA DE PESQUISA*/
function searchJs() {
    document.forms["box-search"].submit()
}
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="icon" href="img/OrganicBagLogo.png">

    <title>OrganicBag</title>
</head>

<body>
    <nav id="menu-nav">
        <div class="menu">
            <img src="img/OrganicBagLogo.png" alt="Logotipo Organicbag" width="100px" height="100px">
            <a href="#">página inicial</a>
            <a href="#produtos">produtos</a>
            <a href="#about">sobre</a>
        </div>

        <div class="buttons">
            <a href="login.html"><button class="login-button">entrar</button></a>
            <a href="cadastro.html"><button class="create-button">criar conta</button></a>
            <i class="bi bi-cart3" id="icon-cart"></i>
        </div>
    </nav>

    <aside id="cart" class="hide">
        <div class="header-cart">
            <i class="bi bi-x-square close-cart" id="close-cart"></i>
            <h1>seu carrinho</h1>
        </div>

        <div class="produto-carrinho">
            <img src="" alt="foto do produto">
            <div class="info-produto">
                <h2>Nome produto</h2>
                <p>R$0,00</p>
            </div>

            <div class="add-sub">
                <button class="remove-button count-item"><i class="bi bi-dash-lg sub"></i></button>
                <input type="text" name="qtd-item" class="qtd-item" id="p1" value="1">
                <button class="add-button count-item"><i class="bi bi-plus add"></i></button>
                
            </div>
        </div>

        <!--<div class="produto-carrinho">
            <img src="" alt="foto do produto">
            <div class="info-produto">
                <h2>Nome produto</h2>
                <p>R$0,00</p>
            </div>

           <div class="add-sub">
                <button class="remove-button count-item"><i class="bi bi-dash-lg sub"></i></button>
                <input type="text" name="qtd-item" class="qtd-item" id="p2" value="1">
                <button class="add-button count-item"><i class="bi bi-plus add"></i></button>
            </div>
        </div>

        <div class="produto-carrinho">
            <img src="" alt="foto do produto">
            <div class="info-produto">
                <h2>Nome produto</h2>
                <p>R$0,00</p>
            </div>

            <div class="add-sub">
                <button class="remove-button count-item"><i class="bi bi-dash-lg sub"></i></button>
                <input type="text" name="qtd-item" class="qtd-item" id="p3" value="1">
                <button class="add-button count-item"><i class="bi bi-plus add"></i></button>
            </div>
        </div>-->

        <div class="continue">
            <h2>Total: R$0,00</h2>
            <button id="continuar">Continuar</button>
        </div>
    </aside>

    <header class="header">
        <div class="headline">
            <div class="text1">
                <h1>Organic</h1>
                <h1>Bag</h1>
                <p>produtos sustentáveis para comprar com consciência</p>
            </div>

            <div class="button-headline">
                <button class="login-button2 button">entrar</button>
                <button class="compras-button button">ir às compras</button>
            </div>
        </div>

        <div class="img-headline">
            <img src="img/monstera plant with holes in white pot.png" alt="Imagem ilustrativa: planta verde.">
        </div>

    </header>

    <!--NOSSOS PRODUTOS-->
    <section id="produtos">
        <div id="search-product">
            <h1>NOSSOS PRODUTOS</h1>
            <div class="box-search">
                <input type="text" name="search" id="search-input" placeholder="pesquise seu produto">
                <i class="bi bi-search" id="icon-search"></i>
            </div>
        </div>

        <div id="type-product">
            <button class="category">ACESSÓRIOS</button>
            <button class="category">DECORAÇÃO</button>
            <button class="category">BELEZA</button>
            <button class="category">ECOBAG</button>
        </div>

        <div class="carousel">
            <div class="produto">
                <i class="bi bi-cart-plus-fill icon-add"></i>
                <a href="categoryLink?code=4"><img src="img/colar1.png" alt="Imagem do produto" class="image-p"></a> 
                <p class="nome-produto">Nome produto</p>
                <p>R$0,00</p>
            </div>

            <div class="produto">
                <i class="bi bi-cart-plus-fill icon-add"></i>
                <img src="" alt="Imagem do produto" class="image-p">
                <p class="nome-produto">Nome produto</p>
                <p>R$0,00</p>
            </div>

            <div class="produto">
                <i class="bi bi-cart-plus-fill icon-add"></i>
                <img src="" alt="Imagem do produto" class="image-p">
                <p class="nome-produto">Nome produto</p>
                <p>R$0,00</p>
            </div>

            <div class="produto">
                <i class="bi bi-cart-plus-fill icon-add"></i>
                <img src="" alt="Imagem do produto" class="image-p">
                <p class="nome-produto">Nome produto</p>
                <p>R$0,00</p>
            </div>
        </div>
    </section>

    <section id="about">

        <div id="text-about">
            <h1>sobre a</h1>
            <h1 id="organic-bag">Organic Bag</h1>

            <p>
                Somos uma empresa preocupada com a questão ambiental e, como sabemos que apenas se preocupar não resolve o problema, 
                decidimos criar este e-commerce, com o objetivo de expandir o comércio de produtos que não agridem a natureza.
            </p>

            <p>
                Estamos interessados em todos os vendedores e empresas que, assim como nós, tem o objetivo de cuidar do nosso planeta, por isso, 
                se você deseja nos conhecer e se juntar à nossa equipe, cadastre-se como um vendedor!
            </p>

            <button class="create-button">Cadastre-se</button>
        </div>
        
        <div id="div-logo">
            <img src="img/OrganicBagLogo.png" alt="Logotipo OrganicBag">
        </div>
    </section>

    <footer>
        <p>Site desenvolvido por: GreenCycle Innovations</p>
        <div class="email">
            <i class="bi bi-envelope-fill email-icon"></i>
            <p>green.cycle@gmail.com</p>
        </div>

        <div class="telefone">
            <i class="bi bi-telephone-fill tel-icon"></i>
            <p>(12) XXXX-XXXX</p>
        </div>
    </footer>

    
</body>
<script src="js/index.js"></script>
</html>
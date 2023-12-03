<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ page import="com.model.Product"%>
<%@ page import="java.util.ArrayList"%>
    
<%
    ArrayList<Product> products = (ArrayList<Product>) request.getAttribute("products");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%out.print(request.getAttribute("category"));%></title>
    <link rel="icon" href="img/OrganicBagLogo.png">
    <link rel="stylesheet" type="text/css" href="css/styleCategoria.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>
<body>
    <!--Barra de menu-->
    <header class="menu">

        <nav class="navBar">
            <img class="logo" src="img/OrganicBagLogo.png">

            <div class="nav-list">
                <ul class="item">
                    <li class="nav-item"><a href="index.html" class="nav-link">página inicial</a></li>
                    <li class="nav-item"><a href="index.html#produtos" class="nav-link">produtos</a></li>
                    <li class="nav-item"><a href="index.html#about" class="nav-link">sobre</a></li>
                    <li class="nav-item">
                        <a href="login.html"><button class="nav-link" id="login"><u>entrar</u></button></a>
                    </li>
                    <li>
                        <a href="cadastro.html"><button class="nav-link" id="conta">criar conta</button></a>
                    </li>
                    <!--CARRINHO-->
                    <li class="cart-toggle">
                        <i class="bi bi-cart3" id="cart"></i>

                        <div class="cart-box" id="cart-box">
                            <i class="bi bi-x-lg" id="close"></i>

                            <h1 class="cartTitle">seu carrinho</h1>

                            <div class="productAdd" id="p1">
                                <img src="img/veganSoap2.png" class="img-cart">
                                <p class="product-name">Sabonete vegano <br><br>
                                R$ 4,50
                                </p>

                                <div class="input-qtd">
                                    <h3 class="update-qtd" id="sub">-</h3>
                                    <input type="number" class="cart-qtd">
                                    <h3 class="update-qtd" id="add">+</h3>
                                </div>
                            </div>
                    </li>

                </ul>
            </div>

        </nav>

    </header>

    <main>
        <div id="search-product">
            <h1 class="category"><%out.print(request.getAttribute("category"));%></h1>
            <form class="box-search" action="search" name="box-search">
                <input type="search" name="search" id="search-input" placeholder="pesquise seu produto">
                <i class="bi bi-search" id="icon-search" onclick="searchJs()"></i>
            </form>
        </div>

        <div class="products">
            <%for(int i =0; i < products.size(); i++) { 
                if(products.get(i).getCategory().equals(request.getAttribute("category")) || request.getAttribute("category").equals("Produtos encontrados")){%>
                    <div class="produto" id="product-cart">
                        <i class="bi bi-cart-plus-fill icon-add"></i>
                        <a href="categoryLink?code=<%=products.get(i).getCode()%>"><img src="getImage1?code=<%=products.get(i).getCode()%>" alt="Imagem do produto" class="image-p"></a> 
                        <p class="nome-produto"><%=products.get(i).getName()%></p>
                        <p>R$<%out.print(String.format("%.2f", products.get(i).getPrice()));%></p>
                    </div>
                <% }
            } %>

        </div>
    </main>

    <script src="js/scriptCategoria.js"></script>
</body>
</html>
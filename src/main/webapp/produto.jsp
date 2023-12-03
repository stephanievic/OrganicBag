<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%int code = (int) request.getAttribute("code");%>

<%@ page import="com.model.Product"%>
<%@ page import="java.util.ArrayList"%>
    
<%
    ArrayList<Product> productsCart = (ArrayList<Product>) request.getAttribute("productsCart");
    int size = (int) request.getAttribute("size");

    System.out.println("aaa: " + productsCart.size());
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%out.print(request.getAttribute("name"));%></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="css/styleProduto.css">
    <link rel="icon" href="img/OrganicBagLogo.png">
</head>
<body>
    <!--Barra de menu-->
    <nav id="menu-nav">
        <div class="menu">
            <img src="img/OrganicBagLogo.png" alt="Logotipo Organicbag" width="100px" height="100px">
            <a href="index.jsp">página inicial</a>
            <a href="index.jsp#produtos">produtos</a>
            <a href="index.jsp#about">sobre</a>
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

        <%for(int i = 0; i< productsCart.size(); i++) {
            System.out.println("produto: " + productsCart.get(i).getCode());%>
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
        <%}%>

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

    <h4 class="path">
        <a href="index.html">página inicial </a> /
        <a href="index.html#produtos"> produtos </a> /
        <a href="getCategory"> <%out.print(request.getAttribute("category"));%> </a> /
        <a href="#"> <%out.print(request.getAttribute("name"));%></a> 
    </h4>

    <!-- PRODUTO -->
    <main>

        <div class="produto">
            <h4 class="back">
                <a href="index.html#produtos">< voltar para página de produtos</a>
            </h4>

            <div class="images">
                <div class="lateral" id="images">
                    <img id="img1" src="getImage1?code=<%=code%>" class="imgProduct" onclick="trocar('getImage1?code=<%=code%>')">
                    <img id="img2" src="getImage2?code=<%=code%>" class="imgProduct" onclick="trocar('getImage2?code=<%=code%>')">
                    <img id="img3" src="getImage3?code=<%=code%>" class="imgProduct" onclick="trocar('getImage3?code=<%=code%>')">
                    <img id="img2" src="getImage4?code=<%=code%>" class="imgProduct" onclick="trocar('getImage4?code=<%=code%>')">
                </div>

                <div class="productPrice">
                    <img id="img0" src="getImage1?code=<%=code%>" class="productImage">

                    <h1 class="price">R$<%out.print(String.format("%.2f", request.getAttribute("price")));%></h1>
                </div>

            </div>

            <div class="info">
                <h1 class="nameProduct"><%out.print(request.getAttribute("name"));%></h1> 
                <p class="code-product" id="code-product">código: <%out.print(request.getAttribute("code"));%></p>

                <div class="desc" id="descInicial">
                    <p><%out.print(request.getAttribute("description"));%></p> 
                </div>

                <button class="more" id="more-desc" onclick="moreInfo()">mais informações</button>

                <div class="qtd">
                    <input type="number" min="1" class="inputQtd" value="1">
                    <p>quantidade</p>
                </div>

                <form action="buyProduct" name="buy-product">
                    <input type="hidden" name="code" value="<%=code%>">
                    <button id="button-buy" class="buy" onclick="buy()">comprar</button> 
                </form>
            </div>
        </div>
    </main>

    <script src="js/scriptProduct.js"></script>
</body>
</html>
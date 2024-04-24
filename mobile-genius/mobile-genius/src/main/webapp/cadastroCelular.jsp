<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Genius</title>
    <link rel="stylesheet" href="./style/cadastroCelular.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <div class="container">
            <nav>
                <div class="logo">
                    <img src="./img/logo.png" alt="Mobile Genius">
                </div>
                <div class="menu">

                </div>
                <div class="icones">
                    <a href="#"><i class="fa-solid fa-user"></i></a>
                    <a href="#"></a><i class="fa-solid fa-cart-shopping"></i></a>
                </div>
            </nav>
        </div>
    </header>

    <section class="banner">
        <div class="container">
            <div class="banner-content"></div>
        </div>
    </section>
    

    <form action="/create-celular" method="post">
        <div class="container-form">
            <h2>Cadastro de Celular</h2>
            <form>
              <div class="form-group">
                <label for="marca">Marca</label>
                <input type="text" id="marca" name="marca" value="${param.marca}">
              </div>
              <div class="form-group">
                <label for="modelo">Modelo</label>
                <input type="text" id="modelo" name="modelo" value="${param.modelo}">
              </div>
              <div class="form-group">
                <label for="preco">Preço</label>
                <input type="text" id="preco" name="preco" value="${param.preco}">
              </div>
              <div class="form-group">
                <label for="quantidade">Quantidade</label>
                <input type = "text" id="quantidade" name="quantidade" value="${param.quantidade}">
              </div>
              <div class="form-group">
                <label for="descricao">Descrição</label>
                <input type = text id="descricao" name="descricao" value="${param.descricao}">
              </div>
              <div class ="form-group">
                 <input type="hidden" id="id" name="id" value= "${param.id}">
              <div class="buttons">
                <button type="submit">Confirmar</button>
                  <a href="/encontre-todos-celulares" class="btn">Celulares Cadastrados</a>
              </div>
            </form>
          </div>
        </form>

    <footer>
        <div class="container">
            <div class="footer-logo">
                <img src="img/logo.png" alt="Mobile Genius">
            </div>
            <div class="footer-links">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#">Loja</a></li>
                    <li><a href="#">Opções de Pagamentos</a></li>
                </ul>
            </div>
        </div>
    </footer>
</body>
</html>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <%@ page contentType="text/html; charset=UTF-8" %>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha384-REPLACE_WITH_YOUR_SHA384" crossorigin="anonymous">
  <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />

  <!-- Carrossel -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="style/cadastroCelular.css" />
  <link rel="stylesheet" href="style/styles.css" />

  <title>Mobile Genius</title>
</head>

<body>

  <!-- Header -->
  <header id="header" class="header">
    <div class="navigation">
      <div class="container">
        <nav class="nav">
          <div class="nav__hamburger">
            <img src="/img/menu-icon.png" alt="Menu">
          </div>

          <div class="nav__logo">
            <a href="/" class="scroll-link"> Mobile Genius </a>
          </div>

          <div class="nav__menu">
            <div class="menu__top">
              <span class="nav__category">PHONE</span>
              <a href="#" class="close__toggle">
                <img src="/img/user-solid.svg" alt="Close">
              </a>
            </div>
          </div>

        <div class="nav__icons">
            <a href="/login.jsp" class="icon__item" id="login-btn">
                <img src="/img/icone-user.png" alt="User">
            </a>
            <a href="#" class="icon__item" id="cart-btn">
                <img src="/img/cart-icon.png" alt="Cart">
            </a>
        </div>
        </nav>
      </div>
    </div>
    </header>
  <!-- End Header -->


    <form action="/create-user" method="post">
        <div class="container-form">

            <h2>Cadastro do Usuário</h2>

            <div class="form-group">
                <label for="nome">Nome/label>
                <input type="text" id="nome" name="nome" value="${param.nome}" required>
            </div>

            <div class="form-group">
                <label for="sobrenome">Sobrenome</label>
                <input type="text" id="sobrenome" name="sobrenome" value="${param.sobrenome}" required>
            </div>

           <div class="form-group">
                           <label for="cpf">CPF</label>
                           <input type="text" id="cpf" name="cpf" value="${param.cpf}" required>
           </div>

           <div class="form-group">
                           <label for="datanascimento">Data de Nascimento</label>
                           <input type="text" id="datanascimento" name="datanascimento" value="${param.datanascimento}" required>
           </div>

           <div class="form-group">
                           <label for="endereco">Endereço</label>
                           <input type="text" id="endereco" name="endereco" value="${param.endereco}" required>
           </div>

           <div class="form-group">
                           <label for="email">Email</label>
                           <input type="text" id="email" name="email" value="${param.email}" required>
           </div>

           <div class="form-group">
                           <label for="numerocelular">Numero de Celular</label>
                           <input type="text" id="numerocelular" name="numerocelular" value="${param.numerocelular}" required>
           </div>

           <div class="form-group">
                           <label for="senha">Senha</label>
                           <input type="text" id="senha" name="senha" value="${param.senha}" required>
           </div>




            <div class="form-group">
                <input type="hidden" id="id" name="id" value="${param.id}">
            </div>


            <div class="buttons">

                <button class="btn" type="submit">Enviar</button>

            </div>
        </div>
    </form>

  <!-- Footer -->
      <footer class="footer">
        <div class="container">
          <p>&copy; 2024 Mobile Genius.</p>
        </div>
      </footer>
  <!-- End Footer -->
</body>
</html>

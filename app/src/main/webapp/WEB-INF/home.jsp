<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Home</title>
    </head>
        <style>
          @import url(https://fonts.googleapis.com/css?family=Fredoka+One);

          * {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
          }

          img {
            display: block;
          }

          a {
            text-decoration: none;
            color: rgb(255, 255, 255);
            -webkit-transition: all 0.25s ease;
            -moz-transition: all 0.25s ease;
            -ms-transition: all 0.25s ease;
            -o-transition: all 0.25s ease;
            transition: all 0.25s ease;
          }

          a:hover {
            color: rgb(255, 217, 0);
            padding-left: 5px;
          }

          body {
            background-color: rgb(255, 217, 0);
          }

          .container {
            display: table;
            margin: 50px auto auto auto;
            overflow: hidden;
            -webkit-box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.2);
            -moz-box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.2);
            box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.2);
          }

          .container:hover .image-caption {
            bottom: -8px;
            opacity: 0;
          }

          .container:hover .image-menu {
            /*transform: translate(0px, 432px);
            /*-webkit-transform: translate(0px, 432px);
            -moz-transform: translate(0px, 432px);
            -o-transform: translate(0px, 432px);
            -ms-transform: translate(0px, 432px);*/
            top: 0;
          }

          .image {
            position: relative;
          }

          .image-caption {
            position: absolute;
            bottom: 6px;
            left: 10px;
            color: rgb(0, 200, 300);
            font-family: "Fredoka One", cursive;
            font-size: 30px;
            text-transform: uppercase;
          }

          .image-menu {
            position: absolute;
            top: -432px;
            left: 0;
            height: 100%;
            width: 100%;
            background-color: rgb(0, 178, 208);
            font-family: "Fredoka One", cursive;
            padding: 20px;
          }

          .image-menu h2 {
            margin: 0;
            color: rgb(255, 217, 0);
            font-size: 36px;
            line-height: 40px;
            text-transform: uppercase;
          }

          .image-menu ul {
            list-style-type: none;
            padding: 0;
          }

          .image-menu li {
            font-size: 22px;
          }

          .transition {
            -webkit-transition: all 0.25s ease;
            -moz-transition: all 0.25s ease;
            -ms-transition: all 0.25s ease;
            -o-transition: all 0.25s ease;
            transition: all 0.25s ease;
            -webkit-backface-visibility: hidden;
          }


        </style>
        

    <body>
      <body>
        <div class="container">
          <div class="image">
            <span class="image-caption transition">Bem vindos a Spring!!</span>
            <span class="image-menu transition">
              <h2>Menu</h2>
              <ul>
                <li><a href="categoria/list">Categorias</a></li>
                <li><a href="plataforma/list">Plataformas</a></li>
                <li><a href="jogo/list">Jogos</a></li>
              </ul>
            </span>
            <img src="https://img.freepik.com/fotos-premium/close-up-de-uma-pessoa-segurando-um-controlador-de-videogame-em-uma-sala-iluminada-com-luzes-rosas-e-azuis_957244-10666.jpg?size=626&ext=jpg&ga=GA1.1.1916936386.1727454812&semt=ais_hybrid" />
          </div>
        </div>
      </body>
    </body>

    <script>

    </script>
</html>


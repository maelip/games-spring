<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Home</title>

        <style>
           :root {
            --default: #00ffc3;
            --hover: #efceff;
            --size: 80px;
            --distance: calc(var(--size) * -.8);
            --spring-easing: linear(
                0, 0.807 3.1%, 1.234 5.2%, 1.391, 1.505, 1.576 8.3%, 1.596, 1.607 9.4%, 1.608,
                1.606 10.1%, 1.589, 1.557, 1.508 12.3%, 1.393 13.8%, 1.057 17.5%, 0.91 19.6%,
                0.861, 0.825, 0.801, 0.788 23.4%, 0.787, 0.789, 0.797 25.3%, 0.81 26.1%,
                0.849 27.6%, 0.969 31.5%, 1.02 33.3%, 1.042, 1.058, 1.068, 1.074 37.6% 38.9%,
                1.067 40.3%, 1.053 41.9%, 1.011 45.7%, 0.993, 0.98, 0.974 51.7% 53.1%,
                0.977 54.6%, 1.002 61.8%, 1.007, 1.009 65.7%, 1.008 68.9%, 0.999 75.9%,
                0.997 79.8%, 1.001 92.7% 100%
            );
            --duration: 3s;
            }

            .goo,
            .goo ul {
            background: inherit;
            filter: url("#schlurp"); // this is reference to svg filter in HTML.
            }

            ul {
            display: flex;
            justify-content: center;
            background: inherit;
            padding: 0 calc(var(--size) / 2);
            li {
                width: var(--size);
                height: var(--size);
                background: var(--default);
                margin: 0 3px;
                color: black;
                position: relative;
            }
            }

            .goo ul li {
            &:before {
                content: "";
                width: 100%;
                height: 100%;
                position: absolute;
                left: 0;
                top: 0;
                border-radius: 100%;
                background: inherit;
                transition: all 0.85s ease;
                transform: translate3d(0, 0, 0); // performance / stability
                will-change: transform; // performance / stability
                backface-visibility: hidden; // performance / stability
            }
            &.hover:before {
                transition: all var(--duration) var(--spring-easing);
                transform: translate3d(0, var(--distance), 0);
                background: var(--hover);
            }
            }

            .menu {
            position: absolute;
            z-index: 1;
            background: transparent;
            text-align: center;
            // overflow: hidden;
            }

            .menu li {
            background: transparent;
            display: flex;
            align-items: flex-start;
            justify-content: center;
            transition: all 0.85s ease;
            height: calc(var(--size) * 2);

            &:hover {
                transition: all calc( var(--duration) - 0.2s ) var(--spring-easing);
                transform: translate3d(0, var(--distance), 0);
                color: white;
            }

            a {
                display: grid;
                grid-template-rows: 1fr 1fr;
                align-items: center;
                justify-content: center;
                cursor: pointer;
                color: rgba(0, 0, 0, 0.6);
                transition: color 0.5s ease;
                width: 100%;
                height: 100%;
            }
            &:hover a {
                color: rgba(0, 0, 0, 0.9);
            }
            }

            nav {
            display: flex;
            justify-content: center;
            margin: 0;
            background: var(--default);
            position: fixed;
            bottom: 0px;
            left: 0px;
            right: 0px;
            }












            /* unimportant styles */

            body {
            color: white;
            background: #333844;
            padding: 20px 0;
            font-family: "Heebo", sans-serif;
            display: flex;
            justify-content: center;
            text-align: center;
            }

            p {
            max-width: 70ch;
            font-weight: 200;
            }

            ul {
            list-style: none;
            margin: 0;
            }

            svg {
            width: calc(var(--size)/3);
            height: calc(var(--size)/3);
            fill: none;
            stroke: currentColor;
            stroke-width: 2;
            stroke-linecap: round;
            stroke-linejoin: round;
            }


        </style>
        
    </head>
    <body>
        <main id=app>
  
            <h1>Bem vindos a minha Spring!!!</h1>
            <p>No vasto e crescente mundo dos jogos, pode ser difícil manter o controle de todos os lançamentos, plataformas e gêneros. Nosso site foi criado com o objetivo de facilitar essa jornada. Aqui, você pode organizar e listar seus jogos favoritos de maneira clara e eficiente, categorizando-os por plataformas e gêneros. Isso permite que você descubra novos títulos de forma mais simples e rápida, garantindo que sempre tenha algo novo e interessante para jogar. A organização de jogos é essencial não só para jogadores casuais, mas também para aqueles que desejam explorar diferentes gêneros ou aproveitar ao máximo suas plataformas. Nossa plataforma torna essa experiência mais fluida, ajudando a encontrar o próximo jogo perfeito ou revisitar um clássico.</p>
            
            <nav>
              <!-- gooey menu background -->
              <aside class="goo">
                <ul>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                </ul>
              </aside>
              <!-- actual menu, cannot be inside gooey due to svg filter -->
              <ul class="menu">
                <li><a href="#">
                  <svg viewBox="0 0 24 24"><use href="home" /></svg></a></li>
                <li><a href="#">
                  <svg viewBox="0 0 24 24"><use href="categoria/list" /></svg></a></li>
                <li><a href="#">
                  <svg viewBox="0 0 24 24"><use href="plataforma/list" /></svg></a></li>
                <li><a href="#">
                  <svg viewBox="0 0 24 24"><use href="jogo/list" /></svg></a></li>
              </ul>
            </nav>
            
          </main>
          
          
          <svg viewBox="0 0 24 24">
            
            <!-- filter to make gooey effect -->
            <filter id="schlurp">
              <feGaussianBlur id="SourceGraphic" stdDeviation="10" />
              <feColorMatrix values="
                 1 0 0 0 0
                 0 1 0 0 0
                 0 0 1 0 0 
                 0 0 0 20 -10
              " />
            </filter>
            
            <defs>
              <g id="home">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z" />
                <polyline points="9 22 9 12 15 12 15 22" />
              </g>
              <g id="heart">
                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z" />
              </g>
              <g id="bag">
                <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z" />
                <line x1="3" y1="6" x2="21" y2="6" />
                <path d="M16 10a4 4 0 0 1-8 0" />
              </g>
              <g id="settings">
                <line x1="4" y1="21" x2="4" y2="14" />
                <line x1="4" y1="10" x2="4" y2="3" />
                <line x1="12" y1="21" x2="12" y2="12" />
                <line x1="12" y1="8" x2="12" y2="3" />
                <line x1="20" y1="21" x2="20" y2="16" />
                <line x1="20" y1="12" x2="20" y2="3" />
                <line x1="1" y1="14" x2="7" y2="14" />
                <line x1="9" y1="8" x2="15" y2="8" />
                <line x1="17" y1="16" x2="23" y2="16" />
              </g>
            </defs>
            
          </svg>

    </body>
</html>


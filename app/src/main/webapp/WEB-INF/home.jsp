<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Home</title>
    
      </head>
        <style>
          @import url('https://fonts.googleapis.com/css?family=Roboto');

          body {
            background: #171a21;
            color: #c6d4df;
            font-family: 'Roboto', sans-serif;
          }

          a {
            color: inherit;
          }

          .container {
            margin: 0 auto;
            width: 100%;
            @media ( min-width: 768px ) { width: 680px; }
            @media ( min-width: 1024px ) { width: 992px; }
            @media ( min-width: 1920px ) { width: 1200px; }
          }

          .menu, 
          .games {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
          }

          .menu {
            justify-content: space-between;
            align-items: center;
            #logo {
              margin: 20px auto 20px 0;
            }
            a {
              font-size: 14px;
              margin-right: 10px;
              text-decoration: none;
              text-transform: uppercase;
            }
          }

          .game {
            background-color: rgba(64, 81, 99, 0.9);
            padding: 16px;
            margin: 0 5px 5px 0;
            display: flex;
            flex-direction: row;
            width: calc( 50% - 38px ); 

            .cover {
              margin-right: 19px;
            }

            .title {
              color: #fff;
              font-size: 22px;
              font-weight: 400;
              margin-bottom: 15px;
            }
            
            li {
              display: inline-block;
              font-size: 12px;
              line-height: 2;
              a {
                margin-right: 3px;
                padding: 2px 5px;
                border: 1px solid rgba(255,255,255,0.2);
                color: #8f98a0;
                border-radius: 3px;
                text-decoration: none;
                &:hover {
                  background: rgba(255,255,255,0.1);
                }
              }
            }

          }
        </style>
        

    <body>
      <section id="header">
        <div class="container">
          <div class="menu">
            <a id="logo" href="https://store.steampowered.com/">
              <img src="https://steamstore-a.akamaihd.net/public/shared/images/header/globalheader_logo.png" />
            </a>
            <a	href="https://google.com/">Google</a>
          </div>
        </div>
    </section>
    
    <section class="body">
      <div class="container">
        <div class="games">
          
          <div class="game game-subnautica">
            <div class="cover">
              <a href="https://store.steampowered.com/app/264710/Subnautica/">
                <img src="https://steamcdn-a.akamaihd.net/steam/apps/264710/header_292x136.jpg" />
              </a>
            </div>
            <div class="copy">
              <h2 class="title">Subnautica</h2>
              <ul>
                <li>
                  <a href="http://subnauticamap.io/">Subnautica Map</a>
                </li>
                <li>
                  <a href="http://subnautica.wikia.com/">Subnautica Wikia</a>
                </li>
                <li>
                  <a href="https://www.reddit.com/r/subnautica/">Subnautica Subreddit</a>
                </li>
              </ul>
            </div>
          </div>
          
          <div class="game game-thelongdark">
            <div class="cover">
              <a href="https://store.steampowered.com/app/305620/The_Long_Dark/">
                <img src="https://steamcdn-a.akamaihd.net/steam/apps/305620/header_292x136.jpg" />
              </a>
            </div>
            <div class="copy">
              <h2 class="title">The Long Dark</h2>
              <ul>
                <li>
                  <a href="https://thelongdark.fandom.com/wiki/The_Long_Dark_Wiki/">The Long Dark Wiki</a>
                </li>
                <li>
                  <a href="https://www.reddit.com/r/thelongdark/">TLD Subreddit</a>
                </li>
              </ul>
            </div>
          </div>
          
          <div class="game game-nomanssky">
            <div class="cover">
              <a href="https://store.steampowered.com/app/275850/No_Mans_Sky/">
                <img src="https://steamcdn-a.akamaihd.net/steam/apps/275850/header_292x136.jpg" />
              </a>
            </div>
            <div class="copy">
              <h2 class="title">No Man's Sky</h2>
              <ul>
                <li>
                  <a href="https://nomanssky.gamepedia.com/">No Man's Sky Wiki</a>
                </li>
                <li>
                  <a href="https://www.reddit.com/r/NoMansSkyTheGame/">No Man's Sky Subreddit</a>
                </li>
                <li>
                  <a href="https://www.google.com/search?q=no+man%27s+sky">Google: "no man's sky"</a>
                </li>
              </ul>
            </div>
          </div>
    
        </div>
      </div>
    </section>
    </body>
</html>


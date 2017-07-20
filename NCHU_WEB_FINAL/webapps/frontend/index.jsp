<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="./css/materialize.css">
    <link rel="stylesheet" href="./css/main.css">
    <script src="./js/jquery.js" charset="utf-8"></script>
    <script src="./js/materialize.js" charset="utf-8"></script>
    <title>Document</title>
    <script type="text/javascript">
      $(document).ready(function() {
        $('.collapsible').collapsible();
        $('.carousel').carousel({dist:0});
        window.setInterval(function(){$('.carousel.show').carousel('next')}, 4000);
        $('ul.tabs').tabs({ 'swipeable': true });
        $('ul.tabs').tabs('select_tab', 'tab_id');
      });
      function carouselHeight() {
          $('.carousel.carousel-slider').each(function() {
              var newHeight = $(this).find('.carousel-item img').height();
              var origStyle = $(this).attr('style');
              $(this).attr('style', origStyle+'; height: '+newHeight+'px !important');
      });
      }
    </script>

  </head>
  <body style="background-color:#FECEA8">

  <main>

    <div class="row">
      <nav>
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo"><i class="material-icons">&nbspcloud</i>生活電商</a>
          <ul class="right hide-on-med-and-down">
            <li><a href="sass.html"><i class="material-icons">search</i></a></li>
            <li><a href="#"><i class="material-icons">shopping_cart</i></a></li>
          </ul>
        </div>

      </nav>

    </div>

    <div class="container">
      <div class="row"></div>

      <div class="carousel carousel-slider center show" data-indicators="true">
        <a class="carousel-item" href="#one!"><img src="images/demo.jpg"width="1024" height="500"></a>
        <a class="carousel-item" href="#two!"><img src="images/logo_bac.png" width="1024" height="500"></a>
        <a class="carousel-item" href="#three!"><img src="images/logo.png"width="1024" height="500"></a>
      </div>

    </div>


    <div class="container">


      <ul class="collapsible popout" data-collapsible="accordion">
        <li>
          <div class="collapsible-header"><i class="material-icons">filter_drama</i>食</div>
          <div class="collapsible-body" style="background-color:orange">
            <ul>
              <li>• &nbsp飲料</li>
              <li>• &nbsp零食</li>
            </ul>
          </div>
        </li>


        <li>
          <div class="collapsible-header"><i class="material-icons">place</i>衣</div>
          <div class="collapsible-body" style="background-color:orange">
            <ul>
              <li>• &nbsp上衣</li>
              <li>• &nbsp襯衫</li>
            </ul>
          </div>
        </li>


        <li>
          <div class="collapsible-header"><i class="material-icons">whatshot</i>行</div>
          <div class="collapsible-body" style="background-color:orange">
            <ul>
              <li>• &nbsp廚具</li>

            </ul>
          </div>
        </li>
      </ul>

    </div>



    <div class="container">
      <div class="row">
        <ul id="tabs-swipe-demo" class="tabs">
          <li class="tab col s6"><a href="#hot">熱門商品</a></li>
          <li class="tab col s6"><a href="#new">最新商品</a></li>

        </ul>
      </div>


      <div class="row">
        <div id="hot" class="col s12 m12 l12">
          <span>我是熱門商品區</span>
        </div>

      </div>


      <div class="row">
        <div id="new" class="col s12 m12 l12">
          <span>我是最新商品區</span>
        </div>
      </div>


      </div>




    </main>


        <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
          </div>
        </footer>



    <script type="text/javascript">

      $('.carousel.carousel-slider').carousel({fullWidth: true});
      $(window).resize(function(){carouselHeight();});

    </script>

  </body>
</html>

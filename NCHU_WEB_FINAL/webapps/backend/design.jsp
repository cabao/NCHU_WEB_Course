<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="js/jquery.js" charset="utf-8"></script>
    <script src="js/bootstrap.js" charset="utf-8"></script>
    <script src="js/semantic.js" charset="utf-8"></script>
    <script src="js/materialize.js" charset="utf-8"></script>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Semantic UI CSS -->
    <link href="css/materialize.css" rel="stylesheet">

    <link href="css/semantic.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

    <script type="text/javascript">
      $(document).ready(

      );
    </script>
  </head>

  <body>


<div class="ui vertical inverted sticky menu fixed top" style="left: 0px; top: -1px; width: 250px !important; height: 1813px !important; margin-top: 0px;">
  <div class="item">
    <a class="ui logo icon image" href="./index.html">
      <img src="./images/logo_bac.png" width="70px" height="70px">
    </a>
    <a href="./index.html"><b style="font-size:18pt">後台</b></a>
  </div>
  <div class="item">
    <!-- <div class="header">Introduction</div> -->
    <div class="menu">

    <a class="item" href="./productIndex.jsp">
      <span style="font-size:14pt">商品管理</span>
    </a>
    <br/>
    <a class="item" href="./orderIndex.jsp">
      <span style="font-size:14pt">訂單管理</span>
    </a>
    <br/>
    <a class="item" href="./design.jsp">
      <span style="font-size:14pt">品牌形象館設計</span>
    </a>
    <br/>
    <a class="item" href="./analyze.jsp">
      <span style="font-size:14pt">報表分析</span>
    </a>
    <br/>
    <a class="item" href="#">
      <span style="font-size:14pt">會員管理</span>
    </a>

    </div>
  </div>

</div>


<div class="div_main">

<div class="header_main">
  <span style="font-size:36px; font-weight:border;">商品管理主頁</span>
</div>

<div class="div_main1">

<div class="orderdetail card">
<div class="line4">
</div>
<div class="content_table">



<table>
  <tr>
    <td colspan="2"><div class="div_design"><p class="p1">目前</p><img src="./images/logo_bac.png" width="300px" height="300px"><br></div></td>
  </tr>

  <tr>

    <td><div class="div_design"><p class="p2" >造型1</p><img src="./images/logo_bac.png" width="150px" height="150px"><br><a href="#" class="btn">預覽</a></div></td>
    <td><div class="div_design"><p class="p2">造型2</p><img src="./images/logo_bac.png" width="150px" height="150px"><br><a href="#" class="btn">預覽</a></div></td>
  </tr>
  <tr>
    <td><div class="div_design"><p class="p2">造型3</p><img src="./images/logo_bac.png" width="150px" height="150px"><br><a href="#" class="btn">預覽</a></div></td>
    <td><div class="div_design"><p class="p2">造型4</p><img src="./images/logo_bac.png" width="150px" height="150px"><br><a href="#" class="btn">預覽</a></div></td>
  </tr>
</table>
<div class="line4">
</div>
<div class="line4">
</div>
</div>




</div>


</div></div>

    <script type="text/javascript">
      $("#nav-button").click(
        function(){
          $('.ui.labeled.icon.sidebar').sidebar('toggle');
        }
      );
    </script>
  </body>
</html>

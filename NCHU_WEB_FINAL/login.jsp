<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="./layout/beforeBody.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>


    <div class="container">
    <div class="col s12 m7">
      <h2 class="header">LOGIN</h2>
      <hr>
      <div class="card horizontal row">
        <div class="card-image row" style="width:40%; ">
          <img src="./admin/images/logo.png" width="330px" height="330px">
        </div>
        <div class="card-stacked row" style="width:50%;">
          <div class="card-content">
            <p></p>
          </div>
          <form class="form1" action="login.jsp" method="post">
          <div class="card-content" style="text-align:left;">
<div class="container">

              <label for="id" id="label1">帳號</label>
              <input type="text" name="id" id="id1" placeholder="" >
              <label for="pwd" id="label2">密碼</label>
              <input type="password" name="pwd" id="pwd1" placeholder="">
          </div></div>
          <div class="card-action center">
<button type="submit" name="button0" class="waves-effect waves-light btn">登入</button>
<button type="button" class="btn" name="button2" onclick="location.href='register.jsp'" >註冊</button>
          </div>
        </form>

        </div>
      </div>
    </div>
  </div>

  </body>
</html>

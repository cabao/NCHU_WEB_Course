<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="./layout/beforeBody.jsp" %>
<%@include file="./layout/sidenav.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <script type="text/javascript">
      $(document).ready(function(){
        $('.tooltipped').tooltip({delay: 50});
      });
    </script>
  </head>
  <body>


  <div class="container" style="margin-left:20%">

    <div class="col s12 m7">
      <h2 class="header">個人資訊</h2>
      <hr>
    </div>


    <div class="row">
      <form class="col s12">
        <div class="row">
          <div class="input-field col s6">
            <i class="material-icons prefix">account_circle</i>
            <input id="icon_account" type="text" class="validate">
            <label for="icon_account">姓名</label>
          </div>
          <div class="input-field col s6">
            <i class="material-icons prefix">vpn_key</i>
            <input id="icon_passwd" type="text" class="validate">
            <label for="icon_passwd">密碼</label>
          </div>
        </div>


        <div class="row">
          <div class="input-field col s6">
            <i class="material-icons prefix">today</i>
            <input id="icon_birthday" type="date" class="validate">
            <label for="icon_birthday">生日</label>
          </div>
          <div class="input-field col s6">
            <i class="material-icons prefix">comment</i>
            <input id="icon_memo" type="tel" class="validate">
            <label for="icon_memo">備註</label>
          </div>
        </div>

      </form>
    </div>






    <button class="btn waves-effect waves-light right" type="submit" name="action">Update
      <i class="material-icons right">send</i>
    </button>

    <div class="row"></div>

  </div>

  </body>
</html>

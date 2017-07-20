<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id = "database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="4104029043" />
  <jsp:setProperty property="user" name="database" value="4104029043" />
  <jsp:setProperty property="password" name="database" value="Ss4104029043!" />
</jsp:useBean>

<%
  database.connectDB();
  database.query("select * from member;");
  ResultSet rs = database.getRS();
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="./css/materialize.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="./js/materialize.min.js"></script>
    <title>Registry</title>
    <script type="text/javascript">
      $(document).ready(function() {

      });




    </script>
  </head>
  <body>



    <div class="navbar-fixed">
        <nav>
            <div class="nav-wrapper">
                <center>
                  <h style="font-size:25px;font-weight:bold;">NCHU-Member</h>
                </center>
            </div>
        </nav>
    </div>

    <div class="row">
      <div class="row"></div>
      <div class="col l4"></div>
      <div class="col s12 m7 l4">
        <div class="card">
          <div class="card-content">
            <form class="" action="./insert.jsp" method="post">
              <div class="row">
                <div class="input-field col s12">
                  <input id="username" type="text" class="validate" name="username" onblur="validate()">
                  <label for="username">Username</label>
                  <div id="msg"></div>
                </div>
              </div>
                  <div id ="xx"></div>
              <div class="row">
                <div class="input-field col s12">
                  <input id="password" type="password" class="validate" name="password">
                  <label for="password">Password</label>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s12">
                  Birthday
                  <input type="date" class="validate" name="birthday">
                  <%-- <label for="date">Birthday</label> --%>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s12">
                  <input id="memo" type="text" class="validate" name="memo">
                  <label for="memo">Memo</label>
                </div>
              </div>
              <div class="row">
                <input class="btn waves-effect waves-light left" type="submit" value="  OK  ">
                <%-- <button type="button" class="btn waves-effect waves-light left" type="submit">OK</button> --%>
                <a href="index.jsp"><button type="button" class="btn waves-effect waves-light right">Cancel</button></a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

<script type="text/javascript">
      function validate(){
        var username = $("#username").val();

        $('#msg').html(
          '<div class="preloader-wrapper small active">'+
            '<div class="spinner-layer spinner-green-only">'+
              '<div class="circle-clipper left">'+
                '<div class="circle"></div>'+
              '</div><div class="gap-patch">'+
                '<div class="circle"></div>'+
              '</div><div class="circle-clipper right">'+
                '<div class="circle"></div>'+
              '</div>'+
            '</div>'+
          '</div>'
        );



        $.ajax({
                //告訴程式表單要傳送到哪裡
                url:"check.jsp",
                //需要傳送的資料
                data: $("#username").serialize(),
                 //使用POST方法
                type : "POST",
                //接收回傳資料的格式，在這個例子中，只要是接收true就可以了
                // dataType:'json',
                 //傳送失敗則跳出失敗訊息
                error:function(){
                //資料傳送失敗後就會執行這個function內的程式，可以在這裡寫入要執行的程式
                alert("Fail");
                },
                //傳送成功則跳出成功訊息
                success:function(response){
                //資料傳送成功後就會執行這個function內的程式，可以在這裡寫入要執行的程式
                  $('#msg').html(response);
                }
            });

      }

</script>

  </body>
</html>

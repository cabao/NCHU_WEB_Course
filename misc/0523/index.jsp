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
  session.setAttribute("login", "0");

  database.connectDB();
  database.query("select * from member;");
  ResultSet rs = database.getRS();
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./css/materialize.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="./js/materialize.min.js"></script>
    <title>Login</title>
    <script type="text/javascript">
      $(document).ready(function(){
        $('ul.tabs').tabs();
        $('ul.tabs').tabs('select_tab', 'tab_id');
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
      <div class="col s12 m12 l12">
        <ul class="tabs">
          <li class="tab col s6 m6 l6"><a class="active" href="#login">Login</a></li>
          <li class="tab col s6 m6 l6"><a href="#about">About</a></li>
        </ul>
      </div>
      <div id="login" class="container">

        <div class="row">
          <div class="row"></div>
          <div class="col l3"></div>
          <div class="col s12 m7 l6">
            <div class="card">
              <div class="card-content">
                <form class="" action="login.jsp" method="post">
                  <div class="row">
                    <div class="input-field col s12">
                      <input id="username" type="text" class="validate" name="username">
                      <label for="username">Username</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12">
                      <input id="password" type="password" class="validate" name="password">
                      <label for="password">Password</label>
                    </div>
                  </div>
                  <div class="row">
                    <input class="btn waves-effect waves-light right" type="submit" value="Login">
                  </div>
                </form>
              </div>
              <div class="card-action">
                <div class="row">
                  <span>Don't have an account? <a href="./registry.jsp">Sign up now ! </a></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div id="about" class="col s12">


        <div class="row">
          <div class="row"></div>
          <div class="col l4"></div>
          <div class="col s12 m7 l4">
            <div class="card">
              <div class="card-content">
                <ul style="font-size:14pt;">
                  <li>• &nbsp NCHU-Web-HW</li>
                  <li>• &nbsp Simple Member System</li>
                  <li>• &nbsp Support Simple method to distinguish user/admin</li>
                  <li>• &nbsp According to your authority, different view.</li>
                  <li>• &nbsp 測試用admin帳號 ： admin/nimda</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>



    </div>

  </body>
</html>

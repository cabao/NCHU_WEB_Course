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

  String username = request.getParameter("username");
  String passwd = request.getParameter("password");
  String birthday = request.getParameter("birthday");
  String memo = request.getParameter("memo");

  String message = "";
  if (username != "" && passwd != "" && birthday != ""){
    database.connectDB();
    database.insertData(username, passwd, birthday, memo);
    message = "帳號新增成功 ! ";
  }else{
    message = "帳號新增失敗";
  }

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
    <title>Simple-Login-Interface</title>
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
            <div class="preloader-wrapper big active">
              <div class="spinner-layer spinner-blue">
                <div class="circle-clipper left">
                  <div class="circle"></div>
                </div><div class="gap-patch">
                  <div class="circle"></div>
                </div><div class="circle-clipper right">
                  <div class="circle"></div>
                </div>
              </div>

              <div class="spinner-layer spinner-red">
                <div class="circle-clipper left">
                  <div class="circle"></div>
                </div><div class="gap-patch">
                  <div class="circle"></div>
                </div><div class="circle-clipper right">
                  <div class="circle"></div>
                </div>
              </div>

              <div class="spinner-layer spinner-yellow">
                <div class="circle-clipper left">
                  <div class="circle"></div>
                </div><div class="gap-patch">
                  <div class="circle"></div>
                </div><div class="circle-clipper right">
                  <div class="circle"></div>
                </div>
              </div>

              <div class="spinner-layer spinner-green">
                <div class="circle-clipper left">
                  <div class="circle"></div>
                </div><div class="gap-patch">
                  <div class="circle"></div>
                </div><div class="circle-clipper right">
                  <div class="circle"></div>
                </div>
              </div>
            </div>
            <span style="font-size:18pt" class="left"><%=message+"<br/>"+"3秒後將為您導回首頁"%></span>
            <%
              response.setHeader("Refresh", "3; URL=index.jsp");
            %>
          </div>
        </div>
      </div>
    </div>

  </body>
</html>

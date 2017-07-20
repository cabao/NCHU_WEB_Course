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

  String username1 = request.getParameter("username");
  String passwd1 = request.getParameter("password");
  boolean state = false;
  String sql_user = "select * from member where username ='"+username1+"'";
  String sql_check = "select * from member where username ='"+username1+"'and passwd='"+passwd1+"'";
  database.query(sql_user);
  ResultSet rs = database.getRS();

%>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="./js/materialize.min.js"></script>
    <title>Login</title>
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
            <%
              try {

                if(rs.next())
                {
                    database.query(sql_check);
                    rs = database.getRS();
                    if(rs.next())
                    {
                        %>
                        <p style="font-size:18pt"><%
                        out.print("登入成功,歡迎  "+username1+"<br/>");
                        out.print("5秒後轉跳到首頁。");%>
                        </p><%
                        response.setHeader("Refresh", "5; URL=index.jsp");

                    }
                    else
                    {
                        out.print("密碼錯誤,請再試一次");
                    }
                }
                else
                {
                    out.print("查無此帳,請再試一次");
                }

              }
              catch(Exception e)
              {
                  out.print(e);
              }

            %>

          </div>
        </div>
      </div>
    </div>

  </body>
</html>

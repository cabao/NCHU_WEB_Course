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
String login_stat="";
//   try{
      login_stat = (String)session.getAttribute("login");
// }
// catch(Exception e)
// {
//   session.setAttribute("login", "0");
//   login_stat = (String)session.getAttribute("login");
//
// }
  try
  {
     if (login_stat == null || login_stat.equals("0")){
          response.sendRedirect("index.jsp");
  }
  }
  catch(Exception e)
  {
      out.print(e);
  }

  String member_id = (String)session.getAttribute("mem_id");
  database.connectDB();
  String sql = "select * from member where id = '"+member_id+"';";
  database.query(sql);
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

    <%
      String user_id = null;
      String user_name = null;
      String birth = null;
      String created_time = null;
      String memo = null;
      String auth = "";
      try
      {
          if (rs.next())
          {
              user_id = rs.getString("id");
              user_name = rs.getString("username");
              birth = rs.getString("birthday");
              created_time = rs.getString("creat_time");
              memo = rs.getString("memo");
              auth = rs.getString("authority");
          }
      }
      catch(Exception e)
      {
          out.print(e);
      }
    %>


    <%
      if(auth.equals("admin"))
      {
    %>
          <div class="row">
            <div class="col s12">
              <ul class="tabs">
                <li class="tab col s6"><a class="active" href="#self_profile">Profile</a></li>
                <li class="tab col s6"><a href="#all_profile">All Profile&nbsp(Administrator ONLY)</a></li>
              </ul>
            </div>
            <div id="all_profile" class="col s12">
              <table>
                <tr>
                  <td>ID</td>
                  <td>Username</td>
                  <td>Birthday</td>
                  <td>Memo</td>
                  <td>Created time</td>
                  <td>Authority</td>
                </tr>
              <%
                database.query("select * from member;");
                rs = database.getRS();
                try{
                   while(rs.next())
                    {
                        out.print("<tr>");
                        String user_id_a = rs.getString("id");
                        String user_name_a = rs.getString("username");
                        String birth_a = rs.getString("birthday");
                        String memo_a = rs.getString("memo");
                        String auth_a = rs.getString("authority");
                        String created_time_a = rs.getString("creat_time");
                        out.print("<td>" + user_id_a+ "</td>"+"<td>" + user_name_a + "</td>"+"<td>" + birth_a + "</td>"+"<td>" + memo_a + "</td>"+"<td>" + auth_a + "</td>"+"<td>" + created_time_a+ "</td>"+"</tr>");
                    }
                }
                catch(Exception e){out.print(e);}
              %>
              </table>
            </div>
          </div>
    <%
      }
rs.close();
    %>

      <div class="row">
        <div class="row"></div>
        <div class="col l4"></div>
        <div class="col s12 m7 l4" id="self_profile">
          <div class="card">
            <div class="card-content">
            <div style="text-align:center;"><span style="font-size:25px;font-weight:bold;">User Profile</span></div>
              <ul>
                <li>• &nbspID : <%=user_id%></li>
                <li>• &nbspUsername : <%=user_name%></li>
                <li>• &nbspBirthday : <%=birth%></li>
                <li>• &nbspCreated_time : <%=created_time%></li>
                <li>• &nbspMemo : <%=memo%></li>
                <li>• &nbspAuthority : <%=auth%></li>
              </ul>
            </div>
          </div>
        </div>
      </div>


  </body>
</html>

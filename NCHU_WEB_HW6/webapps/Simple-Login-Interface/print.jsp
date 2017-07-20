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
    <link rel="stylesheet" href="./css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="./js/materialize.min.js"></script>
    <title>Login</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
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

</div>
    <table>
      <tr>
      <td>id</td>
      <td>username</td>
      <td>birthday</td>
      <td>creat time</td>

      </tr>

      <%
        try{
           while(rs.next())
            {
                out.print("<tr>");
                String user_id = rs.getString("id");
                String user_name = rs.getString("username");
                String birth = rs.getString("birthday");
                String created_time = rs.getString("creat_time");

                out.print("<td>" + user_id+ "</td>"+"<td>" + user_name + "</td>"+"<td>" + birth + "</td>"+"<td>" + created_time+ "</td>"+"</tr>");

            }

        }
        catch(Exception e){out.print(e);}
      %>

    </table>


  </body>
</html>

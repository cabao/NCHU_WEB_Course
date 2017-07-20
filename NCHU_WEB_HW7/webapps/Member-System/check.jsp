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
  boolean state = false;
  String sql_user = "select * from member where username ='"+username1+"'";
  database.query(sql_user);
  ResultSet rs = database.getRS();
%>


    <%
      try {

        if(rs.next())
          out.print("<span style='color:red'>此帳號已存在，請嘗試其他帳號！</span>");
        else
          out.print("<span style='color:green'>恭喜您，可以使用此帳號作為您的帳號！</span>");

      }
      catch(Exception e)
      {
          out.print(e);
      }

    %>

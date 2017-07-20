<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>x</title>
</head>
<body>
<h1>get</h1>

<%
  String s[] = request.getParameter("test");

  out.print(s[0] +"  "+ s[1]);

%>



</ul>
</body>
</html>

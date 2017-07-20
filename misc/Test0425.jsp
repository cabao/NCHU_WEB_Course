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
  String[] s = request.getParameterValues("ch");
  for (int i = 0; i < s.length; i++) {
    out.print(s[i]+"<br>");
  }
%>

</body>
</html>

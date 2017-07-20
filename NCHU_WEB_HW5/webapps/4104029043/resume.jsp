<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>履歷表</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="stylesheet" type="text/css" href="./css/materialize.min.css">
    <script src="./js/jquery-3.2.1.min.js"></script>
    <script src="./js/materialize.min.js"></script>
    <%request.setCharacterEncoding("UTF-8");%>
  </head>
  <body class="re">

    <div class="container">
      <div class="row"></div>
      <div class="row">
        <div class="col s2 l3"></div>

        <div class="col s10 l6" style="text-align:center">
          <div class="Ltitle">
            <span style="font-size:16pt">履歷表</span>
          </div>
        </div>
      </div>
      <table class="resume">
        <tr>
          <th>姓名</th>
          <th>性別</th>
        </tr>

        <tr>
          <td><%= request.getParameter("username")%></td>
          <td><%= request.getParameter("sex")%></td>
        </tr>
          <th>生日</th>
          <th>兵役狀況</th>
        </tr>
        <tr>
          <td><%= request.getParameter("date_input")%></td>
          <td><%= request.getParameter("military_status")%></td>
        </tr>
        <tr>
          <th>學歷</th>
          <th>能力/專長</th>
        </tr>
        <tr>
          <td>
            <%
              String[] edu = request.getParameterValues("education");
              if (edu == null)
                  out.print("無");
              else
                  out.print(Arrays.toString(edu));
            %>
          </td>
          <td>
            <%
              String[] s = request.getParameterValues("skill");
              if (s == null)
                  out.print("無");
              else
                  out.print(Arrays.toString(s));
            %>
          </td>
        </tr>
      </table>
      <div class="row"></div>

      <div class="row">
        <div class="col s12 intro">
          <b>自傳：</b>
          <p style="word-break: break-all;"><%out.print(request.getParameter("self_intro"));%></p>
        </div>
      </div>
    </div>
  </body>
</html>

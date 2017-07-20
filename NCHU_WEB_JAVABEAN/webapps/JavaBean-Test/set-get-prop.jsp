<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:useBean id = "person" scope="application" class="com.cabao.TestJavaBean">
  <jsp:setProperty property="userName" name="person" param="username" />
  <jsp:setProperty property="age" name="person" param="age" />
</jsp:useBean>



<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Set&Get Property</title>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel="stylesheet" href="./css/materialize.css">
      <link rel="stylesheet" href="./css/style.css">
      <script src="./js/jquery.js" charset="utf-8"></script>
      <script src="./js/materialize.js" charset="utf-8"></script>
  </head>
  <body>

    <div class="row">
      <div class="col s12">
        <ul class="tabs">
          <li class="tab col s6"><a class="active" href="#my_form">set&get prop</a></li>
          <li class="tab col s6"><a href="#set_prop">Bean Method</a></li>
        </ul>
      </div>

      <div id="my_form" class="col s12">

        <div class="row">
          <div class="row"></div>
          <div class="col l3"></div>
          <div class="col s12 m7 l6">
            <div class="card">
              <div class="card-content">
                <p>Your username is : <jsp:getProperty name="person" property="userName"/></br>
                   Your age is : <jsp:getProperty name="person" property="age"/>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <%person.setUserName("Bean Method");%>
      <%person.setAge(666);%>


      <div id="set_prop" class="col s12">
        <div class="row">
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="col l3"></div>
          <div class="col s12 m7 l6">
            <div class="card">
              <div class="card-content">
                <p>Your username is : <%=person.getUserName()%></br>
                   Your age is : <%=person.getAge()%>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>


      <%-- <a href="./index.jsp">
        <button class="btn-floating btn-large waves-effect waves-light red right" style="margin-right:3%;margin-top:15%;">
          <i class="large material-icons">store</i>
        </button>
      </a> --%>

  </body>
</html>

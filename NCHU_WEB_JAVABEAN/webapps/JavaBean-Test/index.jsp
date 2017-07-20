<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>JavaBean Test</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="./css/materialize.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="./js/jquery.js" charset="utf-8"></script>
    <script src="./js/materialize.js" charset="utf-8"></script>
  </head>

  <body>


    <div id="my_form" class="container">

      <div class="row">
        <div class="row"></div>
        <div class="col l3"></div>
        <div class="col s12 m7 l6">
          <div class="card">
            <div class="card-content">
              <form class="" action="set-get-prop.jsp" method="post">
                <div class="row">
                  <div class="input-field col s12">
                    <input id="username" type="text" class="validate" name="username">
                    <label for="username">Username</label>
                  </div>
                </div>
                <div class="row">
                  <div class="input-field col s12">
                    <input id="age" type="text" class="validate" name="age">
                    <label for="age">Age</label>
                  </div>
                </div>
                <div class="row">
                  <button class="btn waves-effect waves-light right" type="submit" name="action">Submit
                    <i class="material-icons right">send</i>
                  </button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>
    </div>


  </body>
</html>

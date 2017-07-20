<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="./layout/beforeBody.jsp" %>
<%@include file="./layout/sidenav.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="utf-8">
    <title></title>
<style media="screen">
.flat-table {
  display: block;
  font-family: sans-serif;
  -webkit-font-smoothing: antialiased;
  font-size: 115%;
  overflow: auto;
  width: auto;

	}
  .my-td{
    background-color: rgb(238, 238, 238);
    color: rgb(111, 111, 111);
    padding: 20px 30px;
  }
  .my-th{
    background-color: rgb(112, 196, 105);
    color: white;
    font-weight: normal;
    padding: 20px 30px;
    text-align: center;
  }

</style>
    <script type="text/javascript">
      $(document).ready(function(){
        $('.tooltipped').tooltip({delay: 50});
      });
    </script>
  </head>




  <body>


  <div class="container" style="margin-left:20%">

    <div class="col s12 m7">
      <h2 class="header">訂單查詢</h2>
      <hr>
    </div>

    <div class="row">

    <table class="flat-table">
      <tbody>
        <tr>
          <th class="my-th">ID</th>
          <th class="my-th">Status</th>
          <th class="my-th">Address</th>
          <th class="my-th">Order time</th>
        </tr>
        <tr>
          <td class="my-td">1</td>
          <td class="my-td">Example 2</td>
          <td class="my-td">Example 3</td>
          <td class="my-td">Example 4</td>

        </tr>

      </tbody>
    	</table>



    </div>


  </div>



    <div class="row"></div>

  </div>

  </body>
</html>

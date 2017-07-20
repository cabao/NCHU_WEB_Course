<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="./layout/beforeBody.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

    <div class="container">
     <div class="col s12 m7">
       <h2 class="header">註冊</h2>
       <hr>
       <div class="card horizontal">
         <div class="row " style="width:40%;">
           <img src="./admin/images/logo.png" style="width:100%; ">
         </div>
         <div class="row " style="width:60%; ">

           <form class="form1" action="new.jsp" method="post" id="form1">
           <div class="card-content" style="text-align:left;">
 <div class="container">
         <div>
               <label for="name1" id="label1">姓名</label>
               <input type="text" name="name1" value="" id="name1">
 </div>        <div>
               <label for="id" id="label2">帳號</label><br>
               <input type="text" name="id" placeholder="" id="account1" style="width:60%;"><button type="button" name="button" class="btn" onclick="validation()" style="float:right;">驗證</button>

 </div><div>

               <label for="password" id="label3">密碼</label>

               <input type="password" name="pwd" placeholder="" id="password">
           </div>
 <div class="">
   <label for="date1" id="label4">生日</label>

   <input type="date" name="date1" id="date1" class="datepicker">

 </div>
               <label for="textarea1">備註</label>

               <textarea id="textarea1" name="textarea1" class="materialize-textarea"></textarea>

           </div>
           <div class="center" >
 <button type="submit" name="button0" class="waves-effect waves-light btn" >送出</button>
 <button type="reset" class="btn" name="button2" >重設</button>

 </div>
           </div>

         </form>

         </div>
       </div>
     </div>
   </div>


  </body>
</html>

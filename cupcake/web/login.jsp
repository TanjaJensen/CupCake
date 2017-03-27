<%-- 
    Document   : login
    Created on : 28-02-2017, 12:28:52
    Author     : Tanja
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

    <head>
        <style> body {background-color: #ffcc99}</style>
        
        <title>Cupcake Shop</title>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


        <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet"
              type="text/css"/>



    </head>
    <div style="text-align:center">


        <h1>Cupcake Shop</h1>

    </div>
    <div class="container-fluid">

        <div style="text-align:center">

            <img src="billeder/cupcake_billede.jpg" style="height:200px; width:500px" > 
            <br><br><br>
        </div>
    </div>

    <div class="col-md-3" style="text-align:center">
        <div class="col-md-6">
            

            <form method="POST" action="LoginController"
                  class="form-horizontal">
                <div class="form-group"><br>
                    <label class="col-md-2" for="username">Username:</label>
                    <div class="col-md-10">
                        <input type="text" class="form-control" id="name"
                               placeholder="Username" name="name" required autofocus>


                    </div>
                </div>
                <div class="form-group"><br>
                    <label class="col-md-2" for="pwd">Password:</label>
                    <div class="col-md-10">
                        <input type="password" class="form-control"
                               id="psw" placeholder="Password"
                               name="password" required autofocus>
                    </div>
                </div>

                <div class="col-md-offset-2"> <br>
                    <button type="submit" class="btn btn-default">Log ind
                    </button>
                </div>

            </form>
        </div>
    </div>

    <script src="<c:url value="/js/bootstrap.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/js/jquery-2.2.4.js"/>" type="text/javascript"></script>
</body>
</html>

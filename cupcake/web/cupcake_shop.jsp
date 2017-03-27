<%-- 
    Document   : cupcake_shop
    Created on : 02-03-2017, 15:35:36
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
    <body>
        <div style="text-align:center">
            <h1>Cupcake Shop</h1>                            
        </div>
        
        <div style="text-align:right"> </div>

        
         <form method="POST" action="ShopController"
                  class="form-horizontal">                        
        <div class="container-fluid">

             
                <div style="width: 800px; float:left; height:600px; background-color: #ffcc66; 
                 margin:20px">
                <div style="text-align:center">
                
                     <h2>Shopping cart
                  <button type="submit" class="btn btn-default">Add
                    </button>                
                    </h2>
                    
                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">                                
                                <img src="billeder/chocolate.jpg" style="height:50px; width:80px" > 
                                <input type="radio" name="radio1" value="chocolate" checked> Chocolate 5.00<br>
                                <br><br><br>
                            </div>
                        </div>

                    </div>
                    
                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">
                                <img src="billeder/blueberry.jpg" style="height:50px; width:80px" > 
                                <input type="radio" name="radio1" value="blueberry">Blueberry 5.00<br>            
                                <br><br><br>
                            </div>
                        </div>
                    </div>

                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">
                                <img src="billeder/raspberry.jpg" style="height:50px; width:80px" > 
                                <input type="radio" name="radio1" value="raspberry">Raspberry 5.00 <br>                                            
                                <br><br><br>
                            </div>
                        </div>
                    </div>

                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">
                                <img src="billeder/grispy.jpg" style="height:50px; width:80px" > 
                                <input type="radio" name="radio1" value="crispy">Crispy 6.00<br>                                                                            
                                <br><br><br>
                            </div>
                        </div>
                    </div>

                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">
                                <img src="billeder/strawberry.jpg" style="height:50px; width:80px" > 
                                <input type="radio" name="radio1" value="strawberry">Strawberry 6.00<br>                                                                                                            
                                <br><br><br>
                            </div>
                        </div>
                    </div>

                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">
                                <img src="billeder/rum-raisin.jpg" style="height:50px; width:80px" > 
                                <input type="radio" name="radio1" value="rum-raisin">Rum-Raisin 7.00<br>                                                                                                                                            
                                <br><br><br>
                            </div>
                        </div>
                    </div>
                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">
                                <img src="billeder/orange.jpg" style="height:50px; width:80px" > 
                                <input type="radio" name="radio1" value="orange">Orange 8.00<br>                                                                                                                                                                          
                                <br><br><br>
                            </div>
                        </div>
                    </div>

                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">
                                <img src="billeder/lemon.jpg" style="height:50px; width:80px" >                                 
                                <input type="radio" name="radio1" value="lemon">Lemon 8.00<br>                                                                                                                                                                          
                                <br><br><br>
                            </div>
                        </div>
                    </div>

                    <div style="width: 220px; float:left; height:100px; background-color: #ff9966; 
                         margin:20px">
                        <div class="container-fluid">

                            <div style="text-align:left">
                                <img src="billeder/blue-cheese.jpg" style="height:50px; width:80px" >                                 
                                <input type="radio" name="radio1" value="bluecheese">Blue-cheese 9.00<br>                                                                                                                                                                                                                                         
                                <br><br><br>
                            </div>
                        </div>
                    </div>


                    <div style="width: 120px; float:left; height:70px; background-color: #993300; 
                         margin:20px">
                        <div style="text-align:center">
                            <h5>
                            <input type="radio" name="radio2" value="chocolate-bottom" checked>Chocolate bottom 5.00<br>                                                                                                                                                                                                                                          
                            </h5>
                        </div>
                    </div>

                    <div style="width: 120px; float:left; height:70px; background-color: #ccff66; 
                         margin:20px">
                        <div style="text-align:center">                            
                            <h5>
                            <input type="radio" name="radio2" value="pistacio-bottom">Pistacio bottom  6.00<br>                                                                                                                                                                                                                                                                 
                            </h5>
                        </div>
                    </div>

                    <div style="width: 120px; float:left; height:70px; background-color: #ffeb99; 
                         margin:20px">
                        <div style="text-align:center">
                            <h5>
                            <input type="radio" name="radio2" value="vanilla-bottom">Vanilla bottom   5.00<br>                                                                                                                                                                                                                                                                                         
                            </h5>
                        </div>
                    </div>

                    <div style="width: 120px; float:left; height:70px; background-color: #663300; 
                         margin:20px">
                        <div style="text-align:center">
                            <h5>
                       <input type="radio" name="radio2" value="nutmeg-bottom">Nutmeg bottom    5.00<br>                                                                                                                                                                                                                                                                                         
                            </h5>
                        </div>
                    </div>

                    <div style="width: 120px; float:left; height:70px; background-color: #bfbfbf; 
                         margin:20px">
                        <div style="text-align:center">
                            <h5>
                            <input type="radio" name="radio2" value="almond-bottom">Almond bottom   7.00<br>                                                                                                                                                                                                                                          
                            </h5>
                        </div>
                    </div>

                </div>                                
            </div>
        </div> 
             </form>
                 
        
        <div class="container-fluid">

            <div style="width: 400px; float:left; height:600px; background-color: #ff9966; 
                 margin:20px"> 
                <div style="text-align:center">
                    <h2>Order</h2>
                </div>
            </div>
        </div>


        <script src="<c:url value="/js/bootstrap.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/js/jquery-2.2.4.js"/>" type="text/javascript"></script>

    </body>
</html>


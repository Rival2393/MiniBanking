<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 13.12.2015
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Денежный перевод</title>
    <style type="text/css">
        body{
            background-color: darkseagreen;
        }

        h1{
            color: navy;
            font-family: "Agency FB";
        }

        .header{
            margin-top: 20px;
            margin-left: 41%;
            width: 200px; /* Ширина элемента в пикселах */
            padding: 10px; /* Поля вокруг текста */
            /*margin: auto;*/
            background-color: beige; /* Цвет фона */
            text-align: center;
            border-radius: 30px;
        }

        .input{
            margin-top: 30px;
            margin-left: 0%;
            position: relative;
            top: 44%;
            left: 38%;
        }

        #enter{
            margin-top: 30px;
            position: relative;
            left: 46%;
        }
    </style>
</head>
<body>
<div class="page">
  <div class="header">
    <h1>Введите имя получателя, номер карты и количество денег</h1>
  </div>
  <div class="input">
    <input name="Name" maxlength="30" size="40">
  </div>
  <div class="input">
    <input name="Card" maxlength="30" size="40">
  </div>
  <div class="input">
    <input name="number" maxlength="30" size="40">
  </div>
  <div id="enter">
    <input type="submit" value="Отправить" style="width: 100px; height: 30px">
  </div>
</div>
</body>
</html>

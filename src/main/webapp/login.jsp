<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>NC Banking</title>
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
            width: 200px;
            padding: 10px;
            background-color: beige;
            text-align: center;
            border-radius: 30px;
        }

        .input{
            margin-top: 30px;
            margin-left: 0%;
            position: relative;
            top: 40%;
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
        <h1>Welcome</h1>
    </div>
    <form action="/checker.jsp" method="get">
        <div class="input">
            <input type="text" name="Card" maxlength="30" size="40">
        </div>
        <div class="input">
            <input type="text" name="Password" maxlength="30" size="40">
        </div>
        <div id="enter">
        <input type="submit" value="Войти" style="width: 100px; height: 30px">
    </div>
    </form>
</div>

</body>
</html>
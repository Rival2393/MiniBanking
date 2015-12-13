<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show balance</title>
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
            top: 44%;
            left: 38%;
        }

        #enter{
            margin-top: 30px;
            position: relative;
            left: 46%;
        }
        }
    </style>
</head>
<body>
<div class="page">
    <div class="header">
        <h1>Ваш баланс:</h1>
    </div>
    <div class="input">
        <input name="balance" maxlength="30" size="40">
    </div>
    <div id="enter">
        <input type="button" value="Вернуться" style="width: 100px; height: 30px">
    </div>
</div>
</body>
</html>
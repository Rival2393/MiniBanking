<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
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

        #bal{
            position: relative;
            left: 44%;
        }

        #wdrw{
            position: relative;
            left: 44%;
        }

        #send{
            position: relative;
            left: 44%;
        }
    </style>
</head>
<body>
<div class="page">
    <div class="header">
        <h1>Выберите операцию</h1>
    </div>
    <div class="input" id="bal">
        <input type="submit" name="balance" value="Проверить баланс" maxlength="30" size="40">
    </div>
    <div class="input" id="wdrw">
        <input type="submit" name="withdraw" value="Выдача наличных" maxlength="30" size="40">
    </div>
    <div class="input" id="send">
        <input type="submit" name="send" value="Денежный перевод" maxlength="30" size="40">
    </div>
</div>
</body>
</html>
<%-- 
    Document   : challenge10_1
    Created on : 2016/05/24, 14:26:10
    Author     : kobayashi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="./challenge10_2" method="post">
      名前:<input type="text" name="txtName"><br>
      性別:男<input type="radio" name="rdoB" value="男">　女<input type="radio" name="rdoB" value="女"><br>
      趣味:<textarea name="mulText"></textarea><br>
      <input type="submit" value="送信">
    </form>
    </body>
</html>

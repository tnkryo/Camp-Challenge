<%-- 
    Document   : challenge10_5
    Created on : 2016/05/24, 17:22:47
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
        <%
            String otoko = "";
            String onna = "";
            HttpSession hs = request.getSession(true);
        if("男".equals(hs.getAttribute("LastSei"))){
            otoko = "checked";
        }else if("女".equals(hs.getAttribute("LastSei"))){
            onna = "checked";
        }
        
        %>
        <form action="./challenge10_5zi" method="post">
                名前:<input type="text" name="txtName" value="<%out.print(hs.getAttribute("LastName"));%>"><br>
                性別:男<input type="radio" name="rdoB" value="男" <%out.print(otoko);%>> 　女<input type="radio" name="rdoB" value="女"<%out.print(hs.getAttribute("LastSei"));%>><br>
                趣味:<textarea name="mulText"><%out.print(hs.getAttribute("LastSyumi"));%></textarea><br>
      <input type="submit" value="送信">
    </form>
    </body>
</html>

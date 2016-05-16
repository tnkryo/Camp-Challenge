<%-- 
    Document   : 6_5challenge
    Created on : 2016/05/16, 11:56:10
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
        <%!
        String[] MyId(){
            String[] prve ={"1","坂本龍馬","1836年1月3日","高知県高知市上町"};
            return prve;
        }
            %>
            <%
                String[] data = MyId();
                out.print("名前："+data[1]+"<br>生年月日："+data[2]+"<br>住所："+data[3]);
                %>
    </body>
</html>

<%-- 
    Document   : 6_2challenge
    Created on : 2016/05/13, 16:54:51
    Author     : kobayashi
--%>

<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            void suji(JspWriter w,Integer num){
            try {
            if(num % 2 == 0){
                w.print(num+"は偶数です");
            } else if(num % 2 == 1){
                w.print(num+"は奇数です");
            }
            } catch (IOException e) {
                    System.out.printf(e.getMessage());
                    }
            }
        %>
        <%
                suji(out, 12);
                        %>
    </body>
</html>

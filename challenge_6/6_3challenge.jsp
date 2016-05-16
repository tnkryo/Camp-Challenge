<%-- 
    Document   : 6_3challenge
    Created on : 2016/05/13, 17:23:13
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
            int args(JspWriter w,int num1){
            return args(w,num1,5,false);
        }
            
            int args(JspWriter w,int num1, int num2, boolean type){
            int a = num1 * num2;
            try{
                if(type == false){
                    w.print(a);
                }else{
                    a *= a;
                    w.print(a);
                }
            }catch (IOException e) {
                        System.out.printf(e.getMessage());
                        }
            return a;
        }
            %>
            <%
                args(out,5,3,true);
                %>
    </body>
</html>

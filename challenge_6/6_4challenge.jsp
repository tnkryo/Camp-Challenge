<%-- 
    Document   : 6_1challenge
    Created on : 2016/05/12, 13:57:14
    Author     : kobayashi
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! 
            String getMyName(){
            return "小林竜";
        }
            //String name = getMyName();
            
            Integer getAge(Integer Y,Integer M,Integer D){
            Integer age = 0;
            Calendar birth = Calendar.getInstance();
            Calendar now = Calendar.getInstance();
            
            birth.set(Y,M-1,D);
            age = now.get(Calendar.YEAR) - birth.get(Calendar.YEAR);
            birth.set(Calendar.YEAR,now.YEAR);
            
            Integer now_DOY = now.get(Calendar.DAY_OF_YEAR);
            Integer birth_DOY = birth.get(Calendar.DAY_OF_YEAR);
            if(now_DOY<birth_DOY){
                age--;
            }
            return age;
}
            //Integer userAge = getAge(1994,6,21
            
            boolean Sin(){
            return true;
        }
            
            void text(JspWriter w){
             String name = getMyName();
            Integer userAge = getAge(1994,6,21);
            boolean type = Sin();
            try {
                w.print(name+"<br>"+userAge+"<br>javaを勉強中です。<br>");
            } catch (IOException e) {
                System.out.printf(e.getMessage());
            }
        }
           
%>
        <%
            boolean type = false;
            for(int i =0;i < 10;i++){
                text(out);
            }
            if(type == true){
                out.print("この処理は正しく実行できました");
            } else {
                out.print("正しく実行できませんでした");
            }
            %>
    </body>
</html>

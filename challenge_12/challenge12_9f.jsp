<%-- 
    Document   : challenge12_9f
    Created on : 2016/05/30, 13:10:06
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
        <form action="./challenge12_9" method="post">
                名前　　：<input type="text" name="txtName"><br>
                電話番号：<input type="text" name="txtTell"><br>
                年齢　　：<select name="txtAge">
            <option value="">--</option>
            <%
            for(int i = 0; i<=70; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>歳<br>
                生年月日：<select name="year">
            <option value="">----</option>
            <%
            for(int i=1950; i<=2020; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="">--</option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="">--</option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
      <input type="submit" value="登録">
    </form>
    </body>
</html>

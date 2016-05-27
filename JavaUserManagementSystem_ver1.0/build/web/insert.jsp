<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        <%
            int y =0;
            int m =0;
            int d =0;
            if(hs.getAttribute("year") != null && !hs.getAttribute("year").equals("")){
            y = Integer.parseInt((String)hs.getAttribute("year"));
            }if(hs.getAttribute("month") != null && !hs.getAttribute("month").equals("")){
            m = Integer.parseInt((String)hs.getAttribute("month"));
            }if(hs.getAttribute("day") != null && !hs.getAttribute("day").equals("")){
            d = Integer.parseInt((String)hs.getAttribute("day"));
            }
            String en = "";
            String ei = "";
            String etc = "";
            if("1".equals(hs.getAttribute("type"))){
            en = "checked";
        }else if("2".equals(hs.getAttribute("type"))){
            ei = "checked";
        }else if("3".equals(hs.getAttribute("type"))){
            etc = "checked";
        }
        %>
        名前:
        <input type="text" name="name" value=<%if(hs.getAttribute("name") != null){
        out.print(hs.getAttribute("name"));}else{%>""<%}%>>
        <br><br>
        
        生年月日:　
        <select name="year">
            <%if(y != 0){%>
            <option value="<%=y%>" selected><%=y%>
        </option><%}%>
            <option value="">----</option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <%if(m != 0){%>
            <option value=<%=m%> selected><%=m%>
        </option><%}%>
            <option value="">--</option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <%if(d != 0){%>
            <option value=<%=d%> selected><%=d%>
        </option><%}%>
            <option value="">--</option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
        <input type="radio" name="type" value="1" <%if(ei.equals("") && etc.equals("")){%>checked<%}%>>エンジニア<br>
        <input type="radio" name="type" value="2" <%=ei%>>営業<br>
        <input type="radio" name="type" value="3" <%=etc%>>その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value=<%if(hs.getAttribute("tell") != null){
        out.print(hs.getAttribute("tell"));}else{%>""<%}%>>
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%if(hs.getAttribute("comment") != null){out.print(hs.getAttribute("comment"));}%></textarea><br><br>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>

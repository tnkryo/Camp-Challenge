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
        String[] MyId(int id){
            if(id == 1){
                String[] data ={"坂本龍馬","1836年1月3日","高知県高知市上町"};
                return data;
         } else if(id == 2){
                 String[] data ={"西郷隆盛","1828年1月23日",""};
              return data;
         } else if(id == 3){
                String[] data ={"福澤諭吉","1835年1月10日","大阪府大阪市福島区福島"};
                return data;
         } else{
             String[] data = {"","",""};
            return data;
         }
        }
            %>
            <%
                int id = 0;
                int limit = 2;
                for(int i = 0; i<3 ; i++){
                    int x = 0;
                    id++;
                    String[] data = MyId(id);
                    if(data[x] == null){
                        continue;
                    }
                out.print("名前："+data[x]+"<br>");
                x++;
                if(data[x] == null){
                        continue;
                    }
                out.print("生年月日："+data[x]+"<br>");
                x++;
                if(data[x] == null){
                        continue;
                    }
                out.print("住所："+data[x]+"<br>");
                if(id >= limit){
                    break;
                }
                }
                %>
    </body>
</html>

<%-- 
    Document   : cookie_sample
    Created on : Jun 12, 2017, 11:18:20 AM
    Author     : sayanishimura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.servlet.http.Cookie"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cookie</h1>
        <%
         request.setCharacterEncoding("UTF-8");
         String memo = request.getParameter("memo");

         ArrayList<String>msg=new ArrayList<String>();
             msg.add(memo);
             int last=msg.size();
         
             
        Cookie c =new Cookie("cm",);
      
        response.addCookie(c);
        Cookie[] cl=request.getCookies();
         
        for(Cookie ci:cl){
        out.print("the message you left last time was: "+ci.getValue());
        }
        
        %>
        
    </body>
</html>

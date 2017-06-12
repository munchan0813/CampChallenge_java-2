<%-- 
    Document   : profile_session
    Created on : Jun 12, 2017, 3:00:37 PM
    Author     : sayanishimura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
        //セッションの取得
        HttpSession Session_p = request.getSession();
        
        //Name
        String name =request.getParameter("Name");
        Session_p.setAttribute("name",name);
        
            if(name!=null){
             // first name
             int first=name.indexOf(" ");
             if(first!=-1){
             String fn =name.substring(0,first);
             out.println("<h1>"+fn+"!Thank you for your submission!</h1>");
             }
             }
        
        //sex     
        String sex = request.getParameter("Sex");
        Session_p.setAttribute("sex",sex); 
        
        //hobby
        String hobby =request.getParameter("Hobby");
        Session_p.setAttribute("hobby",hobby);
        
    
        out.println("Your name: "+Session_p.getAttribute("name")+"<br>");
        out.println("Your sex: "+Session_p.getAttribute("sex")+"<br>");
        out.println("Your hobby: "+Session_p.getAttribute("hobby")+"<br>"); 

        %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Thank you for visiting our web site.
            <br>We ask you to fill out the form below.</p>
        <form  action="./profile_session.jsp" method="post">
        <table>
        <tr>
        <td>Name</td>
        <td><input type="text" name="Name" value="<%=name%>" required></td>
        </tr>
        <tr>
        <td>Sex:</td>
        <td>
            <!--radio button 初期値設定　それぞれの状態を用意する-->
            <%if (request.getParameter("Sex") != null) { %>
             <% if (request.getParameter("Sex").equals("female")) { %>
               <input type="radio" name="Sex" value="female" checked>Female
               <input type="radio" name="Sex" value="male" >Male</td> 
              <% } else { %>
               <input type="radio" name="Sex" value="female">Female
               <input type="radio" name="Sex" value="male" checked>Male</td>
              <% } %>
            <%} else {%>
             <input type="radio" name="Sex" value="female">Female
             <input type="radio" name="Sex" value="male" >Male</td>
            <% } %>
            
            
        </tr>
        <tr>
        <td>Hobby</td>
        <td><input type="text" name="Hobby" value="<%=hobby%>"></td>
        </tr>
        </table>
        <input type="submit" name="submit" value="submit">
        </form>        
        
    </body>
</html>

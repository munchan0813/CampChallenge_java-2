<%-- 
    Document   : QueryString
    Created on : Jun 9, 2017, 2:52:35 PM
    Author     : sayanishimura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <title>JSP</title>
    </head>
    <body>
        <h1>結果</h1>
    </body>
</html>
        <%
         request.setCharacterEncoding("UTF-8");
         int q1 =Integer.parseInt(request.getParameter("type"));
         int q2 =Integer.parseInt(request.getParameter("pcs"));
         int q3 =Integer.parseInt(request.getParameter("money"));
            
            switch(q1){
                case 1:out.print("選択された商品:雑貨<br>");
                     break;
                case 2:out.print("選択された商品:生鮮食品<br>");
                     break;
                case 3:out.print("選択された商品:その他<br>");
                     break; 
                default:out.print("1〜3の数字を入力してください。<br>");
                }   
            out.print("一個あたりの金額は"+q3/q2+"円です。");
            if(q3>=3000){
              out.print(q3*1.04+"ポイント取得しました！！");
            }else if(q3>=5000){
              out.print(q3*1.05+"ポイント取得しました！！");
            }else{
              out.print("3000円以上お買い上げ頂くととポイントを差し上げます。");
            }

        %>

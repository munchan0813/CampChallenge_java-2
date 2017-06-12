<%-- 
    Document   : Factoring
    Created on : Jun 9, 2017, 4:20:00 PM
    Author     : sayanishimura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>結果</h1>
    </body>
</html>
<%       
    request.setCharacterEncoding("UTF-8");
    String num = request.getParameter("number");
    int no = Integer.parseInt(num);

    /*
             while(num %2==0){   
                 num=num/2;
                 out.print("2・");
            }
             while(num %3==0){   
                 num=num/3;
                 out.print("3・");
            }         
             while(num %5==0){   
                 num=num/5;
                 out.print("5・");
            }  
             while(num %7==0){   
                 num=num/7;
                 out.print("7・");
            }
     */
    String ans = "";
    int[] sosu = {2, 3, 5, 7, 11, 13, 17, 23, 29,31,37,41,43,47,53,59,61,67,71};
    for (int a : sosu) {
        while (true) {           //while(true){...} 無限ループ
            if (no % a == 0 && no / a != 1) {
                ans += a + "・"; //ans=ans+a+"・" String ansにaを入れていく。
                no = no / a;
            } else {
                break;
            }
        }
    }
    out.print(num + "の素因数は" + ans + no + "です");
%>


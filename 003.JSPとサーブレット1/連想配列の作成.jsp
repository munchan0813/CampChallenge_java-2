     <%@page import="java.util.HashMap"%><%@page import="java.util.HashMap"%>
     <%
    /*以下の順で、連想配列を作成してください。
    "1"に"AAA", "hello"に"world", "soeda"に"33", "20"に"20"*/
        HashMap <Integer,String>data=new HashMap <Integer,String>();
        HashMap <String,String>data2=new HashMap <String,String>();
        HashMap <String,Integer>data3=new HashMap <String,Integer>();
        HashMap <Integer,Integer>data4=new HashMap <Integer,Integer>();
        
        data.put(1,"AAA");
        data2.put("hello","world");
        data3.put("soeda",33);
        data4.put(20,20);
        
        /*practice
        out.print(data2.get("hello"));
        */
        %>
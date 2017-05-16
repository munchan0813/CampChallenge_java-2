       <%
/* switch文を利用して、以下の処理を実現してください。
1. 値が"A"なら「英語」
値が"あ"なら「日本語」
それ以外は何も表示しない処理 */
String name1="A";
int type=0; 

if(name1=="A"){
    type=1;

}else if(name1=="あ"){
    type=2;
}

switch(type){
	case 1:
	  out.print("英語");
	  break;
	case 2:
	  out.print("日本語");
          break;  

}
%>

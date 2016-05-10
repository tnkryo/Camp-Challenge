<%
	String suji = request.getParameter("suji");
	int num = Integer.parseInt(suji);
	int i = 2;
	out.print("元の値："+num+"<br>");
	out.print("1ケタの素因数：");
	while(num != 1 && i < 10){
	if (num%i==0){
	out.print(i + " ");
	num /= i;
	}
	else{
	i++;
	}
	}
	out.print("<br>その他：");
	while(num != 1){
	if (num%i==0){
	out.print(i + " ");
	num /= i;
	}
	else{
	i++;
	}
	}
%>
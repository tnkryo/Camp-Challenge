<%
	int num1 = 7;
	int num2 = 3;
	int tasi = num1 + num2;
	int hiki = num1 - num2;
	int kake = num1 * num2;
	int wari = num1 / num2;
	int amari = num1 % num2;
	out.print(num1+"+"+num2+"は"+tasi+"です"+"<br>");
	out.print(num1+"-"+num2+"は"+hiki+"です"+"<br>");
	out.print(num1+"*"+num2+"は"+kake+"です"+"<br>");
	out.print(num1+"/"+num2+"は"+wari+"です"+"<br>");
	out.print(num1+"%"+num2+"は"+amari+"です");
%>
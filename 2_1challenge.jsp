<%
	int num = 1;
	String suji = " ";
	switch(num){
	case 1:
	suji = "one";
	break;
	case 2:
	suji = "two";
	break;
	default:
	suji = "想定外";
	break;
	}
	out.print(suji);
%>
<%
	String param1 = request.getParameter("param1");
	String param2 = request.getParameter("param2");
	String param3 = request.getParameter("param3");

	int item = Integer.parseInt(param1);
	int yen = Integer.parseInt(param2);
	int kazu = Integer.parseInt(param3);
	int tan = yen / kazu;
	double poi = 0;

	if (yen >= 5000){
	poi = yen * 0.05;
	}else if (yen >= 3000){
	poi = yen * 0.04;
	}else{
	poi = 0;
	;}

	if (item == 1){
	out.print("雑貨："+"総額"+yen+"円"+"一個あたり"+tan+"円"+poi+"ポイント");
	}else if (item == 2){
	out.print("生鮮食品："+"総額"+yen+"円"+"一個あたり"+tan+"円"+poi+"ポイント");
	}else if (item == 3){
	out.print("その他："+"総額"+yen+"円"+"一個あたり"+tan+"円"+poi+"ポイント");
	}
%>
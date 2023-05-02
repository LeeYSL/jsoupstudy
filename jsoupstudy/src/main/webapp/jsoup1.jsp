<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수출입 은행 환율 정보 조회하기</title>
<style type="text/css">
table {border-collapse: collapse}
table, td, th {
	border: 2px solid grey;
}
</style>
</head>
<body>
	<%
	String url = "https://www.koreaexim.go.kr/wg/HPHKWG057M01"; 
	String line = "";
	Document doc = null;
	try {
		doc = Jsoup.connect(url).get(); // url을 접속하여 문서를 지정,  doc : url에서 전달하는 전체 정보를 가지고 있다. 이름이 table인 태그들을 다 가져온다.
		Elements e1 = doc.select("table"); //doc에서 table 태그들 선택
		for (Element ele : e1) { //table 태그를 한개씩 조회
			String temp = ele.html(); //table 태그 하위의 태그들을 문자열로 리턴
			System.out.println("==========");
			System.out.println(temp);
			line += temp;

		}

	} catch (IOException e) {
		e.printStackTrace();
	}
	%><table><%=line%></table>
</body>
</html>
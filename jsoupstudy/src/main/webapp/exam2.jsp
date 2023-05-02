<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수사진 가져오기</title>
</head>
<body>
<%
  String url ="https://www.kgcsports.com/volleyball/player/player_profile.php?no=n01";
  String line = "";
  Document doc =null;
  try {
	  doc = Jsoup.connect(url).get();
	  Element e1 = doc.select("div");
	  
  }
  
%>

</body>
</html>

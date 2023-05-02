<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
Document doc = Jsoup.connect(url).get();
div = doc.select(".playerlist a");
out.println("<table>");
for(int i=0;i<div.size();i++) {
	out.println("<tr>");
	out.println("<td>"+div.get(i).html()+"</td>");
	out.println("</tr>");
}
   out.println("</table>");
   for(int i=0; i<div.size();i++) {
	   if(i%5==0) out.println("<tr>");
	   out.pri
   }

%>
</body>
</html>
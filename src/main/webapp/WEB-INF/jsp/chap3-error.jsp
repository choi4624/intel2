<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
errorPage="chap3-error-page.jsp"
%>
<%-- page 속성 안에 errorPage 넣기 --%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>에러만드는 페이지</title>
</head>
<body>
    <h2> 에러를 일으키는 방법 </h2>
    <%
        String str = null;
        out.println(str.toString());
    %>
    

</body>
</html>
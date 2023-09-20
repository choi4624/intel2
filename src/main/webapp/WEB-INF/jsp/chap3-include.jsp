<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>include 태그 사용</title>
</head>
<body>
    <h2>directive tag 페이지.</h2>
    <%@ include file="include02_header.jsp" %>
    <p> 개인정보처리방침 </p>
    <%@ include file="include02_footer.jsp" %>
</body>
</html>

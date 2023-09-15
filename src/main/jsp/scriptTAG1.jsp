<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ScriptTag1.jsp</title>
</head>
<body>
    <%
        int a = 2;
        int b = 3;
        int sum = a+b;
        out.println("2+3 = " + sum);

        for (int i = 0; i < 10; i++) {
            if(i % 2 == 0)
                out.println(i + "<br>");
            
        }
    %>
</body>
</html>
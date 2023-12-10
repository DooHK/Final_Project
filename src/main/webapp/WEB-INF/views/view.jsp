<%--
  Created by IntelliJ IDEA.
  User: butyk
  Date: 2023-12-11
  Time: 오전 7:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
</head>
<body>
<table id="view">
    <tr><td>카테고리</td><td>${view.category}</td></tr>
    <tr><td>글쓴이</td><td>${view.writer}</td></tr>
    <tr><td>물건</td><td>${view.name}</td></tr>
    <tr><td>가격</td><td>${view.price}</td></tr>
    <tr><td>거래지역</td><td>${view.area}</td></tr>
    <tr><td>올린 날짜</td><td>${view.regdate}</td></tr>
</table>
<button type="button" onclick="history.back()">목록보기</button>
</body>
</html>

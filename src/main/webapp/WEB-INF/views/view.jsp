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
<%@ page import="com.example.BoardVO" %>
<% BoardVO post = (BoardVO) request.getAttribute("post");%>
<table>
    <tr><td>카테고리</td><td><%=post.getCategory()%></td></tr>
    <tr><td>글쓴이</td><td><%=post.getWriter()%></td></tr>
    <tr><td>물건</td><td><%=post.getName()%></td></tr>
    <tr><td>가격</td><td><%=post.getPrice()%></td></tr>
    <tr><td>거래지역</td><td><%=post.getArea()%></td></tr>
    <tr><td>올린 날짜</td><td><%=post.getRegdate()%></td></tr>
</table>
<%--<table id="post">--%>
<%--    <tr><td>카테고리</td><td>${post.category}</td></tr>--%>
<%--    <tr><td>글쓴이</td><td>${post.writer}</td></tr>--%>
<%--    <tr><td>물건</td><td>${post.name}</td></tr>--%>
<%--    <tr><td>가격</td><td>${post.price}</td></tr>--%>
<%--    <tr><td>거래지역</td><td>${post.area}</td></tr>--%>
<%--    <tr><td>올린 날짜</td><td>${post.regdate}</td></tr>--%>
<%--</table>--%>
<button type="button" onclick="history.back()">목록보기</button>
</body>
</html>

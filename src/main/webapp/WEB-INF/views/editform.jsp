<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: butyk
  Date: 2023-12-02
  Time: 오후 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>editform</title>
</head>
<body>
<%--@elvariable id="u" type="java"--%>
<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>카테고리</td><td><form:input path="category"/></td></tr>
        <tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
        <tr><td>물건</td><td><form:input path="name"/></td></tr>
        <tr><td>가격</td><td><form:input path="price"/></td></tr>
        <tr><td>거래지역</td><td><form:input path="area"/></td></tr>
    </table>
    <input type="submit" value="수정하기" />
    <input type="button" value="취소하기" onclick="history.back()">
</form:form>
</body>
</html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <style>
        body {
            padding: 0 33.3333%;
        }
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            margin-top: 10%;
            margin-bottom: 2%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<body>
<%--@elvariable id="u" type="java"--%>
<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="list">
        <tr><td>카테고리</td>
            <td>
                <select name="category">
                <c:choose>
                    <c:when test="${u.category eq 'food'}">
                        <option value="food" selected>식품</option>
                        <option value="electric">전자기기</option>
                        <option value="cloth">의류</option>
                        <option value="furniture">가구</option>
                        <option value="etc">기타</option>
                    </c:when>
                    <c:when test="${u.category eq 'electric'}">
                        <option value="food">식품</option>
                        <option value="electric" selected>전자기기</option>
                        <option value="cloth">의류</option>
                        <option value="furniture">가구</option>
                        <option value="etc">기타</option>
                    </c:when>
                    <c:when test="${u.category eq 'cloth'}">
                        <option value="food">식품</option>
                        <option value="electric">전자기기</option>
                        <option value="cloth" selected>의류</option>
                        <option value="furniture">가구</option>
                        <option value="etc">기타</option>
                    </c:when>
                    <c:when test="${u.category eq 'furniture'}">
                        <option value="food">식품</option>
                        <option value="electric">전자기기</option>
                        <option value="cloth">의류</option>
                        <option value="furniture" selected>가구</option>
                        <option value="etc">기타</option>
                    </c:when>
                    <c:when test="${u.category eq 'etc'}">
                        <option value="food">식품</option>
                        <option value="electric">전자기기</option>
                        <option value="cloth">의류</option>
                        <option value="furniture">가구</option>
                        <option value="etc" selected>기타</option>
                    </c:when>
                    <c:otherwise>
                        <option value="food">식품</option>
                        <option value="electric">전자기기</option>
                        <option value="cloth">의류</option>
                        <option value="furniture">가구</option>
                        <option value="etc">기타</option>
                    </c:otherwise>
                </c:choose>
                </select>
            </td>
        </tr>
        <tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
        <tr><td>물건</td><td><form:input path="name"/></td></tr>
        <tr><td>가격</td><td><form:input path="price"/></td></tr>
        <tr><td>거래지역</td><td><form:input path="area"/></td></tr>
        <tr><td>매너온도</td><td><form:input path="manner"/></td></tr>
        <tr><td>거래상태</td>
            <td>
                <form:radiobutton path="state" value="ing" label="거래중"/>
                <form:radiobutton path="state" value="end" label="거래완료"/>
            </td>
        </tr>
    </table>
    <input type="submit" value="수정하기" />
    <input type="button" value="취소하기" onclick="history.back()">
</form:form>
</body>
</html>

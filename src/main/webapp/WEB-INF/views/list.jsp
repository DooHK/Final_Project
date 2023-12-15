<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value ="${pageContext.request.contextPath}"/>
<%--
  Created by IntelliJ IDEA.
  User: Whan
  Date: 2023-12-02
  Time: 오후 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>list</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
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
    <script>
        function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>중고거래게시판</h1>
<button style="margin-bottom: 8px"><a href="${pageContext.request.contextPath}/login/logout">Log Out</a></button>
<table id ='list' width="90%">
<tr>
    <th></th>
    <th>거래상태</th>
    <th>카테고리</th>
    <th>글쓴이</th>
    <th>물건</th>
    <th>가격</th>
    <th>거래지역</th>
    <th>작성일</th>
    <th>매너온도</th>
    <th>View</th>
    <th>Edit</th>
    <th>Delete</th>

</tr>

<c:forEach items="${list}" var="u">
    <tr>
        <td>${u.seq}</td>
        <td>
            <c:choose>
                <c:when test="${u.state eq 'ing'}">거래중</c:when>
                <c:when test="${u.state eq 'end'}">거래완료</c:when>
                <c:otherwise>미입력</c:otherwise>
            </c:choose>
        </td>
        <td> <c:choose>
            <c:when test="${u.category eq 'food'}">식품</c:when>
            <c:when test="${u.category eq 'electric'}">전자기기</c:when>
            <c:when test="${u.category eq 'cloth'}">의류</c:when>
            <c:when test="${u.category eq 'furniture'}">가구</c:when>
            <c:when test="${u.category eq 'etc'}">기타</c:when>
            <c:otherwise>미입력</c:otherwise>
        </c:choose></td>
        <td>${u.writer}</td>
        <td>${u.name}</td>
        <td>${u.price}</td>
        <td>${u.area}</td>
        <td>
            <fmt:formatDate value="${u.regdate}" pattern="yyyy-MM-dd" />
        </td>
        <td>${u.manner}℃</td>
        <td><a href="view/${u.seq}">글 보기</a></td>
        <td><a href="editform/${u.seq}">글 수정</a></td>
        <td><a href="javascript:delete_ok('${u.seq}')">글 삭제</a> </td>
    </tr>

    </c:forEach>
</table>
<br/><button type = "button" onclick="location.href='add'">새 글쓰기</button>
</body>
</html>
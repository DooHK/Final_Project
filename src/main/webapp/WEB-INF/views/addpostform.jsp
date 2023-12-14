<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Whan
  Date: 2023-12-02
  Time: 오후 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addpost</title>
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

<form action="addok" method = "post">
    <table id="list">
        <tr><td>카테고리</td><td><input type="text" name = "category"/></td></tr>
        <tr><td>글쓴이</td><td><input type="text" name = "writer"/></td></tr>
        <tr><td>물건</td><td><input type="text" name = "name"/></td></tr>
        <tr><td>가격</td><td><input type="number" name = "price"/></td></tr>
        <tr><td>거래지역</td><td><input type = "text" name ="area"></td></tr>
        <tr><td>매너온도</td><td><input type = "text" name ="manner"></td></tr>
        <tr><td>거래상태</td><td><input type="radio" name="state" value="ing"/>거래중<input type="radio" name="state" value="end"/>거래완료</td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>
</body>
</html>
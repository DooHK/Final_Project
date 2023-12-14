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
<%@ page import="com.example.BoardVO" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% BoardVO post = (BoardVO) request.getAttribute("post");%>
<%
    Date regdate = post.getRegdate();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String formattedRegdate = sdf.format(regdate);
%>
<table id="list">
    <tr><td>카테고리</td><td><%=post.getCategory()%></td></tr>
    <tr><td>글쓴이</td><td><%=post.getWriter()%></td></tr>
    <tr><td>물건</td><td><%=post.getName()%></td></tr>
    <tr><td>가격</td><td><%=post.getPrice()%></td></tr>
    <tr><td>거래지역</td><td><%=post.getArea()%></td></tr>
    <tr><td>매너온도</td><td><%=post.getManner()%>&#8451;</td></tr>
    <tr><td>올린 날짜</td><td><%=formattedRegdate%></td></tr>
    <tr><td>거래 상태</td>
        <td>
            <% if ("ing".equals(post.getState())) { %>
            거래중
            <% } else if ("end".equals(post.getState())) { %>
            거래완료
            <% } else { %>
            미입력 :
            <%= post.getState() %>
            <% } %>
        </td></tr>

</table>
<button type="button" onclick="history.back()">목록보기</button>
</body>
</html>

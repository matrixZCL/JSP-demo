<%--
  Created by IntelliJ IDEA.
  User: chenliangzhou
  Date: 2019/7/21
  Time: 10:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>用户管理</h1>
    <hr/>
        welcome
    <hr/>
    <table border="1" align="center" width="30%">
        <thead>
        <tr>
            <th>sequence</th>
            <th>id</th>
            <th>name</th>
            <th>age</th>
            <th>operation</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="u" items="${requestScope.list}" varStatus="vs">
                <tr>
                    <td>${vs.count}</td>
                    <td>${u.id}</td>
                    <td>${u.name}</td>
                    <td>${u.age}</td>
                    <td>
                        <a href="/remove?id=${requestScope.list}">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: chenliangzhou
  Date: 2019/7/20
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--<c:if test="${requestScope.p1.age==1}">--%>
        <%--<span style="color: blueviolet;font-size: 50px">小孩</span>--%>
    <%--</c:if>--%>

    <%--<c:choose>--%>
        <%--<c:when test="${requestScope.p1.age==1}">children</c:when>--%>
        <%--<c:otherwise>adult</c:otherwise>--%>
    <%--</c:choose>--%>




    <c:forEach var="p" items="${requestScope.list}" varStatus="vs">
        <h1>${vs.count}</h1>
        <h1>${p.id}</h1>
        <h1>${p.name}</h1>
        <h1>${p.age}</h1>
    </c:forEach>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: chenliangzhou
  Date: 2019/7/20
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    ${99*99}
    ${10/3}
${1==1}
${1=="1"}
${1==1?"dog":"pig"}
${sessionScope.user}
${requestScope.user1}
${requestScope.user2.age}
${param.username}

${requestScope.list[0]}

${requestScope.map.m1}

${cookie.JSESSIONID.value}

</body>
</html>

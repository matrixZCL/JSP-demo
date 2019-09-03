<%@ page import="java.util.List" %>
<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: chenliangzhou
  Date: 2019/7/19
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p><%=session.getAttribute("username")%></p>
    <table border="1" width="90%" align="center">
        <tr>
            <td>id</td>
            <td>名字</td>
            <td>年龄</td>
            <td>操作</td>
        </tr>

        <%List<User> users=(List<User>)request.getAttribute("users");%>
        <%
            for(User u:users){
                %>
                <tr>
                    <td><%=u.getId()%></td>
                    <td><%=u.getName()%></td>
                    <td><=%u.getAge()%></td>

                </tr>
          <%  }
        %>

    </table>
</body>
</html>

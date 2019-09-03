<%--
  Created by IntelliJ IDEA.
  User: chenliangzhou
  Date: 2019/7/19
  Time: 6:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1">
        <tr>
            <td>expression script</td>
            <td>
                <%=1+1%>
            </td>
            <td>declaration script</td>
            <td>
                <%!int a=10;%>
                <%=a%>
            </td>
            <td>print 5 hello</td>
            <td>
                <%
                    for(int i=0;i<5;i++){%>
                <span style="color:green;"><%="hello"%></span>


                   <% }
                %>
            </td>
        </tr>
    </table>
</body>
</html>

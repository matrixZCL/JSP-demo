<%@ page import="java.util.Date" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: chenliangzhou
  Date: 2019/7/19
  Time: 7:21 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" errorPage="/error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--<%=new Date()%>--%>
    <%--<%=application.getAttribute("name")%>--%>
    <%--<%PrintWriter printWriter=response.getWriter();--%>
    <%--printWriter.print("response");--%>

    <%--<%pageContext.setAttribute("page","page zone");%>--%>
    <%--<%=pageContext.getAttribute("page")%>--%>


    <%--存到pagecontext作用域--%>
    <%pageContext.setAttribute("name1","fffff",PageContext.PAGE_SCOPE);%>

    <%pageContext.setAttribute("name1","fffff",PageContext.SESSION_SCOPE);%>

    <%=session.getAttribute("name1")%>
    <%=pageContext.getAttribute("name1",PageContext.SESSION_SCOPE)%>

    <%=(HttpServletRequest)pageContext.getRequest().getContextPath()%>

</body>
</html>

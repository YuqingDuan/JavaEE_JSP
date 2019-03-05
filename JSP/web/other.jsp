<%--
  Created by IntelliJ IDEA.
  User: Yuqing
  Date: 3/4/2019
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Other Page</title>
    </head>
    <body>
        This is the content in other page...<br>
        City:<br>
        <%=request.getParameter("city")%><br>

        <%
            pageContext.getAttribute("name");
            request.getAttribute("name");
            session.getAttribute("session");
            application.getAttribute("application");
        %>
    </body>
</html>

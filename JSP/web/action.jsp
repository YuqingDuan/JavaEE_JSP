<%--
JSP 常用的动作标签：
    <jsp:include page=""></jsp:include>
    <jsp:param value="" name=""/>
	<jsp:forward page=""></jsp:forward>
--%>
<%--
jsp:include
    <jsp:include page="other02.jsp"></jsp:include>
    包含指定的页面， 这里是动态包含。
    也就是不把包含的页面所有元素标签全部拿过来输出，而是把它的运行结果拿过来。
--%>
<%--
jsp:forward
    <jsp:forward page=""></jsp:forward>
    前往哪一个页面。直接跳转到该页面。不输出本页面内容。
    等同于请求转发：
    request.getRequestDispatcher("other02.jsp").forward(request, response);
--%>
<%--
jsp:param
    意思是： 在包含某个页面的时候，或者在跳转某个页面的时候，加入这个参数。
    <jsp:forward page="other02.jsp">
        <jsp:param value="beijing" name="address"/>
    </jsp:forward>
    在other02.jsp中获取参数
    <br>收到的参数是：<br>
    <%= request.getParameter("address")%>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Action Tag in JSP</title>
    </head>
    <body>
        <jsp:include page="other.jsp"></jsp:include>
        <jsp:forward page="other.jsp">
            <jsp:param name="city" value="xi'an"></jsp:param>
        </jsp:forward>
    </body>
</html>

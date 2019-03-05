<%--
JSP内置对象(重要)
    所谓内置对象，就是我们可以直接在jsp页面中使用这些对象。不用创建。
- pageContext
- request
- session
- application
以上4个是作用域对象
表示这些对象可以存值，他们的取值范围有限定。  setAttribute   和  getAttribute
    使用作用域来存储数据：
        <%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
		%>
	取出四个作用域中的值：
	<%=pageContext.getAttribute("name")%>
	<%=request.getAttribute("name")%>
	<%=session.getAttribute("name")%>
	<%=application.getAttribute("name")%>
	作用域范围大小：
	pageContext -- request --- session -- application
--%>
<%--
四个作用域的区别
* pageContext 【PageContext】作用域仅限于当前的页面。还可以获取到其他八个内置对象。
* request     【HttpServletRequest】作用域仅限于一次请求， 只要服务器对该请求做出了响应。 这个域中存的值就没有了。
* session     【HttpSession】作用域限于一次会话（多次请求与响应） 当中。
* application 【ServletContext】整个工程都可以访问， 服务器关闭后就不能访问了。
--%>
<%--
其余五个隐式对象
- out		【JspWriter】
- response  【HttpServletResponse】
- exception 【Throwable】
- page	    【Object】 ---就是这个jsp翻译成的java类的实例对象
- config    【ServletConfig】
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>8 Invisible Objects in JSP</title>
    </head>
    <body>
        <%
            pageContext.setAttribute("name", page);
            request.setAttribute("name", request);
            session.setAttribute("name", session);
            application.setAttribute("name", application);
        %>

        <%
            pageContext.getAttribute("name");
            request.getAttribute("name");
            session.getAttribute("session");
            application.getAttribute("application");
        %>

        <%
            request.getRequestDispatcher("other.jsp").forward(request, response);
        %>
    </body>
</html>

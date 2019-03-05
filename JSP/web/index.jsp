<%--
指令写法: <%@ 指令名字 %>
page指令:
  language: 表明jsp页面中可以写java代码
  contentType: 其实即使说这个文件是什么类型，告诉浏览器我是什么内容类型，以及使用什么编码
    contentType="text/html; charset=UTF-8"
    text/html  MIMEType 这是一个文本，html网页
  pageEncoding: jsp内容编码
  extends: 用于指定jsp翻译成java(servlet)文件后，继承的父类是谁，一般不用改
  import: 导包使用的，一般不用手写
  session: 值可选的有true or false, 用于控制在这个jsp页面里面，能够直接使用session对象
           具体的区别是，请看翻译后的java文件(Tomcat目录下)
           如果该值是tr: 那么在代码里面会有getSession（）的调用
           如果是false: 那么就不会有该方法调用，也就是没有session对象了。在页面上自然也就不能使用session了。
  errorPage: 指的是错误的页面， 值需要给错误的页面路径
  isErrorPage: 上面的errorPage 用于指定错误的时候跑到哪一个页面去。 那么这个isErroPage, 就是声明某一个页面到底是不是错误的页面。
--%>
<%--
include指令: 包含另外一个jsp的内容进来(静态包含)
    <%@ include file="other02.jsp"%>
    背后细节: 把另外一个页面的所有内容拿过来一起输出。所有的标签元素都包含进来。
--%>
<%--
taglib指令: 引入外部标签库, 详见JSTL部分
    <%@ taglib prefix=""  uri=""%>
    uri: 标签库路径
    prefix : 标签库的别名
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" session="true"
         errorPage="error.jsp" %>
<%@ include file="other.jsp" %>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <% int a = 10 / 0;%>
    </body>
</html>
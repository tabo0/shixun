<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="JumpAdd">增加</a>
<table width="100%" border="1">
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>地址</td>
        <td>email</td>
        <td colspan="2">操作</td>
    </tr>
    <c:forEach items="${students}" var="stu">
        <tr>
            <td>${stu.sid}</td>
            <td>${stu.sname}</td>
            <td>${stu.sgender}</td>
            <td>${stu.sage}</td>
            <td>${stu.saddress}</td>
            <td>${stu.semail}</td>
            <td><a href="DeleteS?sid=${stu.sid}">删除</a></td>
            <td><a href="JumpUpdate?sid=${stu.sid}">修改</a></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
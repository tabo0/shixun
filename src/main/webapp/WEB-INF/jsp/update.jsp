<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
<form action="UpdateS?sid=${stu.sid}" method="post">
    姓名：<input type="text" name="sname" value="${stu.sname}"></br>
    性别：<input type="text" name="sgender" value="${stu.sgender}"></br>
    年龄：<input type="text" name="sage" value="${stu.sage}"></br>
    地址：<input type="text" name="saddress" value="${stu.saddress}"></br>
    邮箱：<input type="text" name="semail" value="${stu.semail}"></br>
    <input type="submit" value="修改">
</form>
</body>
</html>
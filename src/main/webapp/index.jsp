<%--
  Created by IntelliJ IDEA.
  User: jchen
  Date: 2019/6/19
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Page</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="res/css/index.css"/>

</head>
<body>
<div id="mainbox">
    <div class="col-md-6 col-md-offset-3">
        <h1>Welcome to the host</h1>
    </div>

    <div class="col-md-4 col-md-offset-4">
        <form action="/admin/users" method="GET" target="_self">
            <input type="submit" class="btn btn-danger btn-lg" value="Administrator goes here">
        </form>
    </div>
    <div class="col-md-4 col-md-offset-4">
        <form action="/admin/products" method="GET" target="_self">
            <input type="submit" class="btn btn-warning btn-lg" value="To manage products goes here">
        </form>
    </div>
    <div class="col-md-4 col-md-offset-4">
        <form action="/admin/main" method="GET" target="_self">
            <input type="submit" class="btn btn-info btn-lg" value="To view the main page goes here">
        </form>
    </div>

<%--    <div class="col-md-4 col-md-offset-4">--%>
<%--        <form action="/admin/image" method="GET" target="_self">--%>
<%--            <input type="submit" class="btn btn-default btn-lg" value="To see pictures goes here">--%>
<%--        </form>--%>
<%--    </div>--%>
</div>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Details</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel ="stylesheet" href = "../../../res/css/admin.css"/>
</head>
<body>
<div class="container">
    <h1>Product Details</h1>
    <hr/>

    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <td>${product.id}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${product.name}</td>
        </tr>
        <tr>
            <th>Author</th>
            <td>${product.userByUserId.nickname}, ${product.userByUserId.firstName} ${product.userByUserId.lastName}</td>
        </tr>
        <tr>
            <th>Description</th>
            <td>${product.description}</td>
        </tr>

        <tr>
            <th>Production Date</th>
            <td><fmt:formatDate value="${product.produceDate}" pattern="yyyy-MM-dd"/></td>
        </tr>
        <tr>
            <th>Picture</th>
            <td><div><img src ="/res/image/${product.pic}" height = "50%" width = "50%"/></div></td>
        </tr>
    </table>
    <a href="/admin/products" type="button" class="btn btn-primary btn-sm">Back</a>
</div>

<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
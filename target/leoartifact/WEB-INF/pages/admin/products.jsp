<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Products</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel ="stylesheet" href = "../../../res/css/admin.css"/>
</head>

<body>
<div class="container">
    <h1>Products</h1>
    <hr/>

    <h3>All&nbsp&nbsp&nbsp
        <a href="/admin/products/add" type="button" class="btn btn-primary btn-sm">Add</a>
        <a href="/" type="button" class="btn btn-primary btn-sm">Back</a>
    </h3>
    <c:if test="${empty productList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>There is no product, please &nbsp&nbsp<a href="/admin/products/add" type="button" class="btn btn-primary btn-sm">Add</a>
        </div>
    </c:if>

    <c:if test="${!empty productList}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Author</th>
                <th>Date</th>
                <th>Option</th>
            </tr>

            <c:forEach items="${productList}" var="product">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.userByUserId.nickname}, ${product.userByUserId.firstName} ${product.userByUserId.lastName}</td>
                    <td><fmt:formatDate value="${product.produceDate}" pattern="yyyy-MM-dd"/></td>
                    <td>
                        <a href="/admin/products/show/${product.id}" type="button" class="btn btn-sm btn-success">More</a>
                        <a href="/admin/products/update/${product.id}" type="button" class="btn btn-sm btn-warning">Edit</a>
                        <a href="/admin/products/delete/${product.id}" type="button" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
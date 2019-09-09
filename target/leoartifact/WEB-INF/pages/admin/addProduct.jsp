<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add a product</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel ="stylesheet" href = "../../../res/css/admin.css"/>
</head>
<body>
<div class="container">
    <h1>Add a product</h1>
    <hr/>

    <form:form action="/admin/products/addP" method="get" modelAttribute="product" role="form">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name:"
                   required="required"/>
        </div>
        <div class="form-group">
            <label for="userByUserId.id">Maker:</label>
            <select class="form-control" id="userByUserId.id" name="userByUserId.id">
                <c:forEach items="${userList}" var="user">
                    <option value="${user.id}">${user.nickname}, ${user.firstName} ${user.lastName}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <textarea class="form-control" id="description" name="description" rows="3"
                      placeholder="Please Enter Description"></textarea>
        </div>
        <div class="form-group">
            <label for="produceDate">Production Date:</label>
            <input type="date" class="form-control" id="produceDate" name="produceDate" required="required"
            />
        </div>
        <div class="form-group">
            <label for="pic">Pic:</label>
            <textarea class="form-control" id="pic" name="pic" rows="1" placeholder="Picture"></textarea>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">Submit</button>
            <a href="/admin/products" type="button" class="btn btn-primary btn-sm">Back</a>
        </div>
    </form:form>
</div>

<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
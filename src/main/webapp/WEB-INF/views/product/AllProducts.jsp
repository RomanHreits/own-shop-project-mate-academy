<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        h1 {
            font-size: xx-large
        }
    </style>
    <title>Title</title>
</head>
<body>
<h1>Products list:</h1>
<table border="1" style="width: 20%">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>
                <c:out value="${product.id}"/>
            </td>
            <td>
                <c:out value="${product.name}"/>
            </td>
            <td>
                <c:out value="${product.price}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/products/buy?id=${product.id}">Buy</a>
            </td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/" style="font-size:25px;">Main-Page</a></p>
<p><a href="${pageContext.request.contextPath}/shoppingCart/products" style="font-size:25px;">Go-to-cart</a></p>
</body>
</html>

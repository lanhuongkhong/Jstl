<%-- 
    Document   : demojstl
    Created on : 17 thg 10, 2024, 19:36:37
    Author     : PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
    <!-- Ví dụ 1: Hiển thị thông điệp -->
    <h2>Ví dụ 1: Hiển thị thông điệp</h2>
    <h3><c:out value="${message}" /></h3>

    <!-- Ví dụ 2: Vòng lặp với JSTL -->
    <h2>Ví dụ 2: Vòng lặp với JSTL</h2>
    <ul>
        <c:forEach var="item" items="${items}">
            <li>${item}</li>
        </c:forEach>
    </ul>

    <!-- Ví dụ 3: Điều kiện với JSTL -->
    <h2>Ví dụ 3: Điều kiện với JSTL</h2>
    <c:if test="${age >= 18}">
        <p>Bạn đã đủ tuổi để lái xe!</p>
    </c:if>

    <c:choose>
        <c:when test="${age < 13}">
            <p>Bạn là trẻ em.</p>
        </c:when>
        <c:when test="${age >= 13 && age < 20}">
            <p>Bạn là thanh thiếu niên.</p>
        </c:when>
        <c:otherwise>
            <p>Bạn là người lớn.</p>
        </c:otherwise>
    </c:choose>

    <!-- Ví dụ 4: Lặp qua Map -->
    <h2>Ví dụ 4: Lặp qua Map</h2>
    <ul>
        <c:forEach var="entry" items="${studentMap}">
            <li>${entry.key} - ${entry.value}</li>
        </c:forEach>
    </ul>

    <!-- Ví dụ 5: Hiển thị danh sách đối tượng -->
    <h2>Ví dụ 5: Hiển thị danh sách đối tượng</h2>
    <table border="1">
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.name}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
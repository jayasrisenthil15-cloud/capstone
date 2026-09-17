<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Details - JayasriMart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <header class="navbar">
        <h2>JayasriMart</h2>
        <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
    </header>

    <div class="product-detail-container" style="display: flex; gap: 30px; padding: 40px; max-width: 900px; margin: auto;">
        <div class="product-image">
            <img src="${pageContext.request.contextPath}/images/${product.imageUrl}" alt="${product.name}" style="width: 300px; border-radius: 8px;">
        </div>
        <div class="product-info">
            <h2>${product.name}</h2>
            <p class="category" style="color: #666;">Category: <strong>${product.category}</strong></p>
            <h3 style="color: #004d40;">₹ ${product.price}</h3>
            <p>High quality product available at JayasriMart. Fast delivery and secure checkout available.</p>
            
            <form action="${pageContext.request.contextPath}/cart" method="post" style="margin-top: 20px;">
                <input type="hidden" name="productId" value="${product.id}">
                <button type="submit" class="add-btn">Add to Cart</button>
            </form>
        </div>
    </div>
</body>
</html>

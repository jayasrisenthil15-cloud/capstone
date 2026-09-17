<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JayasriMart - Your Campus Marketplace</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <!-- Main Header -->
    <header>
        <div class="logo">🛒 JayasriMart</div>
        <div class="search-bar">
            <input type="text" placeholder="Search for products, brands and more...">
        </div>
        <div class="nav-links">
            <c:if test="${not empty sessionScope.user}">
                <span>Hello, <b>${sessionScope.user.name}</b></span>
                <a href="${pageContext.request.contextPath}/auth/logout">Logout</a>
            </c:if>
            <c:if test="${empty sessionScope.user}">
                <a href="${pageContext.request.contextPath}/auth/login">Login / Register</a>
            </c:if>
            <a href="${pageContext.request.contextPath}/cart">🛒 Cart</a>
        </div>
    </header>

    <!-- Sub Navigation -->
    <div class="sub-nav">
        <span>≡ All Categories</span>
        <span>Home</span>
        <span>Shop</span>
        <span>Sellers</span>
        <span>About Us</span>
        <span>Contact</span>
    </div>

    <!-- Main Content Layout -->
    <div class="main-layout">
        
        <!-- Left Side: Hero + Categories + Products -->
        <div>
            <!-- Hero Banner -->
            <div class="hero">
                <div class="hero-content">
                    <h1>Your Campus Marketplace</h1>
                    <p>Buy • Sell • Support Students<br/>Quality products and trusted community in one place!</p>
                    <a href="#products" class="hero-btn">Shop Now →</a>
                </div>
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=350" style="border-radius:12px; width:280px;" alt="Laptop">
            </div>

            <!-- Categories -->
            <div class="section-container">
                <div class="section-title">Shop by Category</div>
                <div class="categories-grid">
                    <div class="category-card">💻 Electronics</div>
                    <div class="category-card">📚 Books</div>
                    <div class="category-card">👕 Fashion</div>
                    <div class="category-card">🏠 Home</div>
                    <div class="category-card">💄 Beauty</div>
                    <div class="category-card">⚽ Sports</div>
                    <div class="category-card">🎧 Accessories</div>
                </div>
            </div>

            <!-- Featured Products -->
            <div class="section-container" id="products">
                <div class="section-title">Featured Products</div>
                <div class="products-grid">

                    <!-- Laptop -->
                    <div class="product-card">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=300" alt="Laptop">
                        <div class="title">Laptop (15", 8GB, 512GB)</div>
                        <div class="price">₹28,999</div>
                        <form action="${pageContext.request.contextPath}/cart/add" method="post">
                            <input type="hidden" name="productName" value="Laptop (15-inch, 8GB)">
                            <input type="hidden" name="price" value="28999">
                            <button type="submit" class="add-btn">Add to Cart</button>
                        </form>
                    </div>

                    <!-- Backpack -->
                    <div class="product-card">
                        <img src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=300" alt="Backpack">
                        <div class="title">Campus Backpack</div>
                        <div class="price">₹799</div>
                        <form action="${pageContext.request.contextPath}/cart/add" method="post">
                            <input type="hidden" name="productName" value="Campus Backpack">
                            <input type="hidden" name="price" value="799">
                            <button type="submit" class="add-btn">Add to Cart</button>
                        </form>
                    </div>

                    <!-- Notebooks -->
                    <div class="product-card">
                        <img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=300" alt="Notebook">
                        <div class="title">Notebook (Set of 5)</div>
                        <div class="price">₹249</div>
                        <form action="${pageContext.request.contextPath}/cart/add" method="post">
                            <input type="hidden" name="productName" value="Notebook (Set of 5)">
                            <input type="hidden" name="price" value="249">
                            <button type="submit" class="add-btn">Add to Cart</button>
                        </form>
                    </div>

                    <!-- Headphones -->
                    <div class="product-card">
                        <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=300" alt="Headphones">
                        <div class="title">Wireless Headphones</div>
                        <div class="price">₹1,299</div>
                        <form action="${pageContext.request.contextPath}/cart/add" method="post">
                            <input type="hidden" name="productName" value="Wireless Headphones">
                            <input type="hidden" name="price" value="1299">
                            <button type="submit" class="add-btn">Add to Cart</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <!-- Right Side: Sidebar Cart Preview -->
        <div class="cart-sidebar">
            <div class="cart-header">
                <span>My Cart</span>
                <a href="${pageContext.request.contextPath}/cart" style="font-size:12px; color:#004d40;">View All</a>
            </div>

            <c:if test="${empty cartItems}">
                <p style="font-size: 13px; color: #718096; text-align: center; padding: 20px 0;">Your cart is empty</p>
            </c:if>

            <c:if test="${not empty cartItems}">
                <c:forEach var="item" items="${cartItems}">
                    <div class="cart-item">
                        <div class="cart-item-info">
                            <div class="cart-item-title">${item.productName}</div>
                            <div class="cart-item-price">₹${item.price} x ${item.quantity}</div>
                        </div>
                    </div>
                </c:forEach>

                <a href="${pageContext.request.contextPath}/cart">
                    <button class="checkout-btn">Proceed to Checkout →</button>
                </a>
            </c:if>
        </div>

    </div>

</body>
</html>

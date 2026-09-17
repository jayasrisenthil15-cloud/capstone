<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Checkout - JayasriMart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="checkout-container" style="max-width: 500px; margin: 50px auto; padding: 20px; border: 1px solid #ddd; border-radius: 8px;">
        <h2>Order Checkout</h2>
        <hr><br>
        <form action="${pageContext.request.contextPath}/order" method="post">
            <label><strong>Shipping Address:</strong></label><br>
            <textarea name="address" required style="width: 100%; height: 80px; margin: 10px 0; padding: 8px;"></textarea>

            <label><strong>Payment Method:</strong></label><br>
            <div style="margin: 10px 0;">
                <input type="radio" id="upi" name="paymentMode" value="UPI" checked>
                <label for="upi">UPI / GPay / PhonePe</label><br>
                <input type="radio" id="paytm" name="paymentMode" value="Paytm">
                <label for="paytm">Paytm Wallet</label><br>
                <input type="radio" id="cod" name="paymentMode" value="COD">
                <label for="cod">Cash on Delivery (COD)</label>
            </div>

            <button type="submit" class="checkout-btn" style="background: #004d40; color: white; padding: 10px; width: 100%; border: none; cursor: pointer;">Place Order</button>
        </form>
    </div>
</body>
</html>
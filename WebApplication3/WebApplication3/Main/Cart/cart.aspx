<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication3.Main.Cart.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="cart_styles.css" rel="stylesheet"/>
    </head>
<body>
    <%--<form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
     <nav id="navigator">
    <div id="hidden_list_div">
        <ion-icon name="list-outline" id="list_icon"></ion-icon>
        <ul>
            <li><a href="../Home/home.aspx">Home</a></li>
            <li><a href="../Contact/contact.aspx">Contact</a></li>
            <li><a href="../About/about.aspx">About</a></li>
            <li><a href="../Login/login.aspx">Logout</a></li>
        </ul>
    </div>
    <h1>Online Store</h1>
    <ul id="visable_list">
        <li><a href="../Home/home.aspx">Home</a></li>
        <li><a href="../Contact/contact.aspx">Contact</a></li>
        <li><a href="../About/about.aspx">About</a></li>
    </ul>
    <div id="search_bar_div">
        <form id="form1" runat="server">
            <asp:TextBox ID="search_bar" runat="server" Placeholder="Search..." ></asp:TextBox>
            <%--<input type="search" placeholder="Search..." id="search_bar">--%>
            <label for="search_bar"></label>
            <button type="submit">
                <ion-icon name="search-outline"></ion-icon>
            </button>
        </form>
    </div>
    <div class="cart_in_nav" data-url="" onclick="go_to_page('../Cart/cart.aspx')">
        <h4>Cart</h4>
        <ion-icon name="cart" id="cart_icon"></ion-icon>
    </div>
</nav>
 <section class="cart-container">
    <div class="cart">
       <h2 class="cart-title">My Shopping Cart</h2>
       <div class="grid">
       </div>
       <!-- Summary -->
       <div class="cart-summary">
          <div class="summary-labels">
             <h5>Subtotal:</h5>
             <h5>Tax:</h5>
             <h5>Total:</h5>
          </div>
          <div class="summary-values">
             <h5>$<span id="sub-total">0</span></h5>
             <h5>$<span id="tax-amount">0</span></h5>
             <h5>$<span id="total-price">0</span></h5>
          </div>
       </div>
       <div class="checkout-container">
          <button type="button" class="checkout-btn">Check Out</button>
       </div>
    </div>
 </section>
 <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
 <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
 <script src="cart_app.js"></script>
</body>
</html>

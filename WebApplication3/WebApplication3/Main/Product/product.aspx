<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="WebApplication3.Main.Product.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Product Details</title>
    <link rel="stylesheet" href="product_styles.css"/>
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
        <div class="cart" data-url="" onclick="go_to_page('../Cart/cart.aspx')">
            <h4>Cart</h4>
            <ion-icon name="cart" id="cart_icon"></ion-icon>
        </div>
    </nav>

    
    <div class="product-container">
        <img src="images/items-photos/1.webp" alt="Product Image" class="product-image"/>
        <div class="product-details">
            <h1>Product title</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate eveniet eos rem molestiae repellendus, ducimus distinctio perspiciatis veniam, neque iure illo eligendi. Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit consectetur.</p>
            <p class="price">$14.99</p>
            <button class="add-to-cart">Add To Cart</button>
        </div>
    </div>


<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="product_app.js"></script>
</body>
</html>

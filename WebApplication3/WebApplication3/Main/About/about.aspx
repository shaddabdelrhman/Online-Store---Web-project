<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WebApplication3.Main.About.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>About</title>
    <link rel="stylesheet" href="about.css"/>
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

<main>
    <div class="container">

        <div class="about-section">

            <h2>About Us</h2>
            <p>At Just-SuperMarket, we are dedicated to providing our community with the highest quality products and outstanding customer service. Founded in 2025, we have been a trusted destination for fresh groceries, household essentials, and more.</p>

            <h3>Our Mission</h3>
            <p>We aim to create a shopping experience that combines convenience, affordability, and quality. Whether you're picking up your weekly groceries or exploring our specialty sections, we're here to serve you better.</p>

            <h3>Why Choose Us?</h3>
            <ul>
                <li>Fresh and locally sourced produce</li>
                <li>Wide range of international products</li>
                <li>Competitive prices</li>
                <li>Friendly and knowledgeable staff</li>
                <li>Convenient locations and hours</li>
            </ul>
        </div>
    </div>
</main>

<footer>
    <p>&copy; 2025 JustSupermarket. All rights reserved.</p>
</footer>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="about_app.js"></script>
</body>
</html>

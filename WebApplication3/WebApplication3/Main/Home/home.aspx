<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication3.Main.Home.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Home</title>
    <link rel="stylesheet" href="home_styles.css"/>
</head>
<body id="home_page_body">
   <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
        <nav id="navigator">
        <div id="hidden_list_div">
            <ion-icon name="list-outline" id="list_icon"></ion-icon>
            <ul>
                <li><a href="home.aspx">Home</a></li>
                <li><a href="../Contact/contact.aspx">Contact</a></li>
                <li><a href="../About/about.aspx">About</a></li>
                <li><a href="../Login/login.aspx">Logout</a></li>
            </ul>
        </div>
        <h1>Online Store</h1>
        <ul id="visable_list">
            <li><a href="home.aspx">Home</a></li>
            <li><a href="../Contact/contact.aspx">Contact</a></li>
            <li><a href="../About/about.aspx">About</a></li>
            <!-- <li><a href="#services">Services</a></li> -->
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
    <div class="grid">
    </div>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="home_app.js"></script>
</body>
</html>

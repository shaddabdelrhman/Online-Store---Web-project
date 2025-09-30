<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <link rel="stylesheet" href="login_styles.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />
</head>

<body id="login_page_body">
    <div class="form-box">
        <div class="form-value">
            <form id="form1" runat="server">
                <h2 id="h2_login">Login</h2>
                <div class="inputbox">
                    <ion-icon name="mail-outline"></ion-icon>
                    <%--<input type="email" required class="input_animation">--%>
                    <asp:TextBox ID="txt_email" runat="server" CssClass="input_animation" TextMode="Email" required="true" ></asp:TextBox>
                    <label for="txt_email">Email</label>
                </div>
                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <%--<input type="password" required class="input_animation">--%>
                    <asp:TextBox ID="txt_password" runat="server" CssClass="input_animation" TextMode="Password" required="true"></asp:TextBox>
                    <label for="txt_password">Password</label>
                </div>
                <div class="forget">
                    <%--<label for=""><input type="checkbox">Remember Me  <a href="#">Forget Password</a></label>--%>
                    <label for="">
                        <asp:CheckBox ID="Chk_remember_me" runat="server" />Remember Me  <a href="#">Forget Password</a>

                    </label>
                </div>
                <%--<button id="login-btn"><a href="../Home/home.html">Log in</a></button>--%>
                <asp:Button ID="login_btn" runat="server" Text="Log in" OnClick="login_btn_Click" />
                <asp:Label ID="lblMessage" runat="server" Text="" CssClass="message"></asp:Label>
                <div class="register">
                    <p>Don't have a account <a href="#">Register</a></p>
                </div>
                <div class="another_user">
                    <asp:RadioButton ID="user" runat="server" Checked="true" GroupName="type_of_user" />
                    <%--<input type="radio" id="user" name="type_of_user" checked>--%>
                    <label for="user" style="margin-right: 5px;">User</label>
                    <asp:RadioButton ID="admin" runat="server" GroupName="type_of_user" />
                    <%--<input type="radio" id="admin" name="type_of_user">--%>
                    <label for="admin" style="margin-right: 5px;">Admin</label>
                    <asp:RadioButton ID="owner" runat="server" GroupName="type_of_user" />
                    <%--<input type="radio" id="owner" name="type_of_user">--%>
                    <label for="owner">Owner</label>
                    
                </div>
            </form>
        </div>
    </div>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>

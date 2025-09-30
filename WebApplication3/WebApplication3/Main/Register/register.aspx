<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication3.Main.Register.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Sign Up</title>
    <link rel="stylesheet" href="register_styles.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet"/>
</head>
<%--<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>--%>
<body id="signup_page_body">
    <form id="form2" runat="server">
    <div class="form-box">
        <div class="form-value">
                <h2 id="h2_signup">Sign Up</h2>
                <div class="inputbox">
                    <ion-icon name="person-outline"></ion-icon>
                    <asp:TextBox ID="txt_username" runat="server" CssClass="input_animation" required="true"></asp:TextBox>
                    <%--<input type="text" required class="input_animation">--%>
                    <label for="txt_username">Username</label>
                </div>
                <div class="inputbox">
                    <ion-icon name="mail-outline"></ion-icon>
                    <asp:TextBox ID="txt_email" runat="server" TextMode="Email" CssClass="input_animation" required="true"></asp:TextBox>
                    <%--<input type="email" required class="input_animation">--%>
                    <label for="txt_email">Email</label>
                </div>
                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="input_animation" required="true"></asp:TextBox>
                    <%--<input type="password" id="password" required class="input_animation">--%>
                    <label for="password">Password</label>
                </div>
                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <asp:TextBox ID="confirmPassword" runat="server" TextMode="Password" CssClass="input_animation" required="true"></asp:TextBox>
                    <%--<input type="password" id="confirmPassword" required class="input_animation">--%>
                    <label for="confirmPassword">Confirm Password</label>
                </div>
                <asp:Button ID="signup_btn" runat="server" Text="Sign Up" UseSubmitBehavior="true" OnClick="signup_btn_Click" />
                <%--<button id="signup-btn" type="submit">Sign Up</button>--%>
                <asp:Label ID="lblMessage" runat="server" CssClass="error-message" />
                <div class="register">
                    <p>Already have an account? <a href="#">Log In</a></p>
                </div>
                <div class="another_user">
                    <asp:RadioButton ID="rad_user" runat="server" GroupName="type_of_user" Checked="true" />
                    <%--<input type="radio" id="user" name="type_of_user" checked>--%>
                    <label for="rad_user" style="margin-right: 5px;">User</label>
                    <asp:RadioButton ID="rad_admin" runat="server" GroupName="type_of_user" />
                    <%--<input type="radio" id="admin" name="type_of_user">--%>
                    <label for="rad_admin" style="margin-right: 5px;">Admin</label>
                    <asp:RadioButton ID="rad_owner" runat="server" GroupName="type_of_user" />
                    <%--<input type="radio" id="owner" name="type_of_user">--%>
                    <label for="rad_owner">Owner</label>
                </div>
        </div>
    </div>
    <script src="register_app.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        <%--<asp:GridView ID="GridView1" runat="server">
        </asp:GridView>--%>
    </form>
</body>
</html>

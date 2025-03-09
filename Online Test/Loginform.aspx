<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginform.aspx.cs" Inherits="Online_Test.Loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style type="text/css">
        /* General Styles */
        body {
            background-image: url('pics/image1.jpg');
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #fff;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        .login-form {
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            padding: 30px;
            border-radius: 8px;
            width: 100%;
            max-width: 400px;
        }

        .login-header {
            text-align: center;
            font-family: 'Chiller', sans-serif;
            font-weight: bold;
            font-size: 32px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
            width: 100%;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            font-size: 16px;
        }

        .form-group input:focus {
            outline: none;
            border-color: #0066cc;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
        }

        .form-group .error {
            color: red;
            font-size: 12px;
        }

        .button-container {
            text-align: center;
        }

        .button-container button {
            padding: 10px 20px;
            background-color: #0066cc;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .button-container button:hover {
            background-color: #004d99;
        }

        .links-container {
            text-align: center;
            margin-top: 15px;
        }

        .links-container a {
            color: #fff;
            text-decoration: none;
            margin: 5px;
            font-size: 14px;
        }

        .links-container a:hover {
            text-decoration: underline;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 600px) {
            .login-header {
                font-size: 24px;
            }

            .login-form {
                padding: 20px;
                width: 90%;
            }

            .form-group input {
                font-size: 14px;
                padding: 8px;
            }

            .button-container button {
                font-size: 14px;
                padding: 8px 15px;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-form">
                <div class="login-header">Login Form</div>

                <div class="form-group">
                    <label for="txtuname">Username:</label>
                    <asp:TextBox ID="txtuname" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" CssClass="error" ErrorMessage="Username is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label for="txtpwd">Password:</label>
                    <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" CssClass="error" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="button-container">
                    <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" OnClick="btnlogin_Click" />
                </div>

                <div class="links-container">
                    <asp:HyperLink ID="Hyperlink" runat="server" NavigateUrl="~/Regform.aspx" Target="_self">Register Now</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Forgetpassword.aspx" Target="_self">Forget Password</asp:HyperLink>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

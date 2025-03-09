<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regform.aspx.cs" Inherits="Online_Test.Regform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style type="text/css">
        body {
            background-image: url('pics/image1.jpg');
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        .form-container {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 30px;
            border-radius: 8px;
            width: 100%;
            max-width: 450px;
            box-sizing: border-box;
        }

        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
        }

        .form-container input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
            background-color: #f9f9f9;
        }

        .form-container input:focus {
            outline: none;
            border-color: #0066cc;
        }

        .form-container button {
            width: 100%;
            padding: 12px;
            background-color: #0066cc;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .form-container button:hover {
            background-color: #004d99;
        }

        .form-container .error {
            color: red;
            font-size: 12px;
        }

        .form-container .links {
            text-align: center;
            margin-top: 15px;
        }

        .form-container .links a {
            color: #fff;
            font-size: 14px;
            text-decoration: none;
        }

        .form-container .links a:hover {
            text-decoration: underline;
        }

        .form-container .title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            font-family: 'Chiller', sans-serif;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
                width: 100%;
                max-width: 90%;
            }

            .form-container .title {
                font-size: 20px;
            }

            .form-container input {
                font-size: 14px;
                padding: 10px;
            }

            .form-container button {
                font-size: 14px;
                padding: 10px;
            }
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-container">
                <div class="title">Registration Form</div>

                <div>
                    <label for="txtemail">Email:</label>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" CssClass="error" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" CssClass="error" ErrorMessage="Enter a Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>

                <div>
                    <label for="txtuname">Username:</label>
                    <asp:TextBox ID="txtuname" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuname" CssClass="error" ErrorMessage="Username is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <label for="txtpassword">Password:</label>
                    <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" CssClass="error" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Button ID="btnreg" runat="server" CssClass="btn" OnClick="btnreg_Click1" Text="Signup" />
                </div>

                <div class="links">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Loginform.aspx" Target="_self">Already Registered? Login</asp:HyperLink>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testrules.aspx.cs" Inherits="Online_Test.Testrules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test Rules</title>
    <style type="text/css">
        body {
            background-image: url('pics/Image2.jpg');
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: center;
            padding: 20px;
            box-sizing: border-box;
        }

        .title {
            font-size: 32px;
            font-weight: bold;
            color: #FF3300;
            margin-bottom: 20px;
        }

        .rule {
            font-size: 18px;
            margin: 15px 0;
            color: white;
        }

        .radio-buttons {
            margin-top: 20px;
        }

        .radio-buttons label {
            font-size: 18px;
            color: white;
            margin-right: 20px;
        }

        .radio-buttons input {
            margin: 0 10px;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            .title {
                font-size: 28px;
            }

            .rule {
                font-size: 16px;
            }

            .radio-buttons label {
                font-size: 16px;
            }
        }

        @media (max-width: 480px) {
            .title {
                font-size: 24px;
            }

            .rule {
                font-size: 14px;
            }

            .radio-buttons label {
                font-size: 14px;
            }

            .radio-buttons {
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <asp:Label ID="Sessionname" runat="server" CssClass="session-name"></asp:Label>
            <asp:Label ID="Label1" runat="server" CssClass="title" Text="Test Rules"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="rule" Text="1. Total 10 Questions"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="rule" Text="2. Each Question Carries 1 Marks"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="rule" Text="3. Duration 5 Min Only"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="rule" Text="Do You Want to Continue?"></asp:Label>

            <div class="radio-buttons">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Start" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Yes" AutoPostBack="True" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Start" OnCheckedChanged="RadioButton1_CheckedChanged" Text="No" AutoPostBack="True" />
            </div>

        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

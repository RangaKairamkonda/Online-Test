<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgetpassword.aspx.cs" Inherits="Online_Test.Forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <style type="text/css">
        body {
            background-image: url('pics/image6.jpg');
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
            box-sizing: border-box;
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
                <div class="title">Forgot Password</div>

                <div>
                    <label for="txtemail">Enter Email:</label>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" ForeColor="#3366FF"></asp:TextBox>
                </div>

                <div>
                    <asp:Button ID="btngetpin" runat="server" CssClass="btn" OnClick="btngetpin_Click" Text="Submit" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

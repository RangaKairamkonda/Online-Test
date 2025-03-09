
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultBoard.aspx.cs" Inherits="Online_Test.ResultBoard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Result Board</title>
    <style type="text/css">
        
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; 
            flex-direction: column;
            text-align: center;
            background-image: url('pics/image5.jpg'); 
            background-size: cover; 
            background-position: center; 
        }

        
        .result-label {
            margin: 10px 0;
            font-size: 24px;
            color: white; 
        }

        @media (max-width: 768px) {
            .result-label {
                font-size: 18px;
            }
        }
    </style>
    <script type="text/javascript">
       
        setTimeout(function () {
            window.location.href = 'Loginform.aspx';
        }, 30000);  
    </script>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container">
            <asp:Label ID="Label2" runat="server" CssClass="result-label" Text="Hi !"></asp:Label>
            <asp:Label ID="lblname" runat="server" CssClass="result-label"></asp:Label>
            <asp:Label ID="lblscore" runat="server" CssClass="result-label"></asp:Label>
        </div>
    </form>
</body>
</html>

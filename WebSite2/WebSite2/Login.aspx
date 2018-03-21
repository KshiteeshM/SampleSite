<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link href="App_StyleSheets/LoginStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="default_form">
        <div class="container h-100">
            <div class="row justify-content-center align-items-center">
                <div class="card">
                    <div class="card-body">
                        <img runat="server" class="basic-image" src="~/Images/philips-new-logo-brand-3a6e21c0797fec97-128x128.png" style="float: right;" />
                        <h4 class="card-title">Sign In</h4>
                        <h4 class="card-text">To Continue To Projects</h4>

                        <hr />
                    </div>

                    <div class="card-body w-100">
                        <asp:TextBox runat="server" ID="Username_TextBox" CssClass="basicTextBox" placeholder="Username">
                            
                        </asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox runat="server" ID="Password_TextBox" CssClass="basicTextBox" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="card-body w-100">
                        <hr />
                        <asp:Button runat="server" ID="Login_Button" CssClass="basicButton" Text="LOGIN" OnClick="Login_Button_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

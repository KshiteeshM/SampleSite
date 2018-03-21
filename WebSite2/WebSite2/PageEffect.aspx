<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageEffect.aspx.cs" Inherits="PageEffect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="App_StyleSheets/DefaultStyleSheet.css" rel="stylesheet" />
    <link href="App_StyleSheets/ParentStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                <nav class="navbar navbar-inverse bg-white" style="background-color: white; border: none;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#ProjectsNavbar" runat="server">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <img runat="server" class="navbar-brand h-100" src="~/Images/philips-new-logo-brand-3a6e21c0797fec97-128x128.png" />
                </div>
                <div class="collapse navbar-collapse" id="ProjectsNavbar">
                    <ul class="nav navbar-nav" id="nav-list">
                        <li><a href="Login.aspx">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="ProjectCompilation.aspx">Projects<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Default.aspx">ProjectMQ</a></li>
                                <li><a href="#">Lookup</a></li>
                            </ul>
                        </li>
                        <li><a href="#">About</a></li>
                    </ul>
                    <!--
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    </ul>
                    -->
                </div>
            </div>
        </nav>
        <div>
            <asp:ScriptManager runat="server" ID="ScriptManager1">
            </asp:ScriptManager>
            <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                <ContentTemplate>
                    <asp:Timer runat="server" ID="Timer1" Interval="20000" OnTick="Timer1_Tick"></asp:Timer>
                    <asp:Label ID="ToBeLogged_Label" runat="server" Text="Waiting for the service to be restarted..."></asp:Label>
                    <br />
                    <asp:Label ID="Logging_Label" runat="server" Text="Logging LM_Criticals" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="Logged_Label" runat="server" Text="LM_Criticals have been logged .Click to continue" Visible="False"></asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" Visible="False" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageEffect.aspx.cs" Inherits="PageEffect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
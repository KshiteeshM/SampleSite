<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HostNameList.aspx.cs" Inherits="HostNameList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Select the hostname whose LM_Critical information you want to retrieve and click on center<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
        <br />
    </form>
</body>
</html>

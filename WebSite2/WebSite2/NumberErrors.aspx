<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NumberErrors.aspx.cs" Inherits="NumberErrors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;Select the component and click on enter to view error details
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            </asp:RadioButtonList>
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
            <br />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <%--  <style>
         {
    width: 300px;
    border: 25px solid green;
    padding: 25px;
    margin: 25px;
}
    </style>--%>
</head>
<body>
   <form id="form1" runat="server">
        <div>
            Enter the service you want to stop
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="50"></asp:TextBox>
            <br />
            Time for which you want the service<asp:TextBox ID="TextBox2" runat="server" MaxLength="50"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
            <br />
            <br />
        </div>
    </form>
         
</body>
</html>

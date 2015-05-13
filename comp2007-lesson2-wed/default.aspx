<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="comp2007_lesson2_wed._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wed Default Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <asp:Literal ID="ltlMessage" runat="server"></asp:Literal>
        <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
        <asp:Button ID="btnCopyText" runat="server" Text="Copy Text" OnClick="btnCopyText_Click" />
    </div>
    <div>
        <h4>List Controls</h4>
        <div>
            Toppings: <asp:Label ID="lblToppings" runat="server"></asp:Label>
        </div>
        <div>
            Size: <asp:Label ID="lblSize" runat="server"></asp:Label>
        </div>
        <asp:CheckBoxList ID="cblToppings" runat="server" autopostback="true" on OnSelectedIndexChanged="cblToppings_SelectedIndexChanged" >
            <asp:ListItem Value="1" Text="Pepperoni"></asp:ListItem>
            <asp:listitem Value="2" Text="Anchovies"></asp:listitem>
            <asp:ListItem Value="3" Text="Extra Cheese"></asp:ListItem>
        </asp:CheckBoxList>
        <asp:dropdownlist ID="ddlSize" runat="server">
            <asp:ListItem Value="S" Text="Small"></asp:ListItem>
            <asp:listitem Value="M" Text="Medium"></asp:listitem>
            <asp:ListItem Value="L" Text="Large"></asp:ListItem>
            <asp:listitem Value="XL" Text="Extra Large"></asp:listitem> 
        </asp:dropdownlist>
        <asp:Button ID="btnShowSelections" runat="server" Text="Show Selections" OnClick="btnShowSelections_Click" />
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#"MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="webformpageupdate.aspx.cs" Inherits="traineedatabasetask.webformpageupdate" %>

<asp:Content ID="id122" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotran">
        <asp:Label ID="Label1" runat="server" Text="TID"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Change domain"></asp:Label>
          <asp:DropDownList ID="DropDownListdopmain" runat="server">
            <asp:ListItem>.NET</asp:ListItem>
            <asp:ListItem>Data WareHouse</asp:ListItem>
            <asp:ListItem>Selenium</asp:ListItem>
            <asp:ListItem>RDBMS</asp:ListItem>
            <asp:ListItem>IOT</asp:ListItem>
            <asp:ListItem>Angular JS</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
</asp:Content>

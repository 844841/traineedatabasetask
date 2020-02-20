<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="webformpagewholedisplay.aspx.cs" Inherits="traineedatabasetask.webformpagewholedisplay" %>

<asp:Content ID="id122" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label">whole table</asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="click here" OnClick="Button1_Click" />
        <br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
</asp:Content>
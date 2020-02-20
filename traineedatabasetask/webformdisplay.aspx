<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="webformdisplay.aspx.cs" Inherits="traineedatabasetask.webformdisplay" %>

<asp:Content ID="cid" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="enter student id"></asp:Label><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="student" OnClick="Button1_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

</asp:Content>

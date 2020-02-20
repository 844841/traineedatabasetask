<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="webformregistration.aspx.cs" Inherits="traineedatabasetask.webformregistration" %>

<asp:Content ID="id122" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotran">
        <asp:Label ID="tidl" runat="server" Text="ENTER ID"></asp:Label>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredField" ControlToValidate="tidT" ForeColor="#FF3300" ValidationGroup="vg"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="tidT" runat="server" Width="151px"></asp:TextBox>
        <br />
        <asp:Label ID="tnamel" runat="server" Text="ENTER NAME"></asp:Label>
        <BR />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNAME" runat="server" ErrorMessage="enter proper name" ControlToValidate="name" ForeColor="Red" ValidationGroup="vg" Visible="False"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="name" runat="server" Width="147px"></asp:TextBox>
        <br />
        <asp:Label ID="tlocationl" runat="server" Text="Location"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownListloc" runat="server">
            <asp:ListItem>Chennai</asp:ListItem>
            <asp:ListItem>Pune</asp:ListItem>
            <asp:ListItem>Bangalore</asp:ListItem>
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Coimbatore</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="tdomainl" runat="server" Text="ENTER YOUR DOMAIN"></asp:Label>
        <br />
     
            <asp:DropDownList ID="DropDownListdopmain" runat="server">
            <asp:ListItem>.NET</asp:ListItem>
            <asp:ListItem>Data WareHouse</asp:ListItem>
            <asp:ListItem>Selenium</asp:ListItem>
            <asp:ListItem>RDBMS</asp:ListItem>
            <asp:ListItem>IOT</asp:ListItem>
            <asp:ListItem>Angular JS</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="SdateL" runat="server" Text="StartDate"></asp:Label>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br style="font-family: Arial" />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
               <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click1" />

    </div>
    </asp:Content >


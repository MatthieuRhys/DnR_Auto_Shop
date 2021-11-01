<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Verify2.aspx.cs" Inherits="Rhy3Studio.Verify2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    <asp:TextBox ID="verify" runat="server"></asp:TextBox>


    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    <asp:Label ID="err" runat="server" Text="Label"></asp:Label>



</asp:Content>

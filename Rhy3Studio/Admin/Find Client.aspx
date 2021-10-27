<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Find Client.aspx.cs" Inherits="Rhy3Studio.Find_Client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    ID:  <asp:TextBox ID="ID" runat="server"></asp:TextBox>

    <br /> 
    <br /> 

    <asp:Button ID="Button1" runat="server" Text="Find" OnClick="Button1_Click" />

    <br />
    <br />
    <asp:Label ID="Address" runat="server" Text="Label"></asp:Label>

    <br /> 

    <asp:Label ID="Phone" runat="server" Text="Label"></asp:Label>


    <br /> 

    <asp:Label ID="Email" runat="server" Text="Label"></asp:Label>






</asp:Content>

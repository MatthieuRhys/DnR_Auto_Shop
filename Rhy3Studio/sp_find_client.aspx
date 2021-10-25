<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sp_find_client.aspx.cs" Inherits="Rhy3Studio.sp_find_client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    ID: <asp:TextBox ID="Client_ID" placeholder="Please Enter Id Here" runat="server"></asp:TextBox>
    
    <br />
    <br />
    <br />

    <asp:Button ID="Button1" runat="server" Text ="Submit" />

    <br />
    <br />
    <br />



    <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
    <br />
    <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:Label ID="Phone" runat="server" Text="Label"></asp:Label>

    

    

</asp:Content>

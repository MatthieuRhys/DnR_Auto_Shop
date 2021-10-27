<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Rhy3Studio.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <address>
        <h3>Address</h3>
        90 Main Street<br />
        Santa Cruz, St.Elizabeth<br />
        <abbr title="Phone">P:</abbr>
        (876)966-9078
    </address>

   <address>
        <strong>Support:</strong>   <a href="mailto:mattxrhys12@gmail.com">mattxrhys12@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:ryc3studio@outlook.com">rhy3studio@outlook.com</a>
    </address>
</asp:Content>

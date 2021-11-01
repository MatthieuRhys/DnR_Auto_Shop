<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Verify2.aspx.cs" Inherits="Rhy3Studio.Verify2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


                       
    <style>

     
        h1,h5{

            text-align:center;
            font-weight:bold;
            color:black;
        }


    </style>

     <h1>TWO FACTOR AUTHENTICATION </h1>
                           <h5> ENTER CODE IN TEXTBOX BELOW </h5>



    
    <asp:TextBox ID="verify" runat="server" placeholder="Enter Code Here"></asp:TextBox>
    <br />
    <br />

    CODE: &nbsp;&nbsp<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
     <br />
    <br />

    <div id="btn">    
        
        <asp:Button ID="Button1" Height="40" Width="120" class="btn btn-success" runat="server" Text="Continue>>" OnClick="Button1_Click" />
       
    </div>

     <br />
    <br />


    <asp:Label ID="err" runat="server" Text="" ></asp:Label>



</asp:Content>

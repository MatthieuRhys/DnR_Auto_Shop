<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Find Client.aspx.cs" Inherits="Rhy3Studio.Find_Client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <style>
        .m{
            text-align:center;
            font-family: 'Book Antiqua';
            color:black;
            font-size:16px;
            padding-top:20px
        }
        h1,h5{
              text-align: center;

            font-weight: bold;

            color:black;
        }
        
        #Button1{

            margin-left: 520px;

            height: 40px;

            width:150px;
        }

        #id_o{
            margin-left:480px;
            padding-top:40px;
            color:black;
        }

    </style>
    

      
    <h1> FIND CLIENT </h1>
    <h5> This is a stored Procedure used to Find client info </h5>

    <div id="id_o">
    ID:  <asp:TextBox ID="ID" runat="server"></asp:TextBox>
        </div>
    <br /> 
    <br /> 

  <button type="submit" id="Button1" onclick="Btn_click" class="btn btn-success">Find</button>

    <br />
    <br />
    <div class="m">
    <asp:Label ID="Address" runat="server" Text="Label"></asp:Label>

    <br /> 
        <br />
    <asp:Label ID="Phone" runat="server" Text="Label"></asp:Label>
        <br />

    <br /> 

    <asp:Label ID="Email" runat="server" Text="Label"></asp:Label>


        </div>



</asp:Content>

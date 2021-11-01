<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profitability.aspx.cs" Inherits="Rhy3Studio.Profitability" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <style>
          h1, h5{
            text-align: center;

            font-weight: bold;

            color:black;
        }

          .we{

                font-size:16px;

              color:black;
              margin-left:450px;
              margin-top:40px;
          
          }


    </style>

    <h1> Profit</h1>

    <h5>This is a retrun stored Procedure to show the current profit of the Company </h5>
    <br />
    <br />

    <div class="we">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_Demo1ConnectionString %>" SelectCommand="sp_Profit" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Column1:
            <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Column1:
            <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Current Profit: $
            <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
        </div>
</asp:Content>

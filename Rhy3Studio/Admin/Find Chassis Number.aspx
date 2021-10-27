<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Find Chassis Number.aspx.cs" Inherits="Rhy3Studio.Find_Chassis_Number" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <h1 style="text-align:center">FIND CHASSIS NUMBER </h1>

    <h5 style="text-align:center">Enter ID Number to Find The Chassis Number </h5>



   ID: <asp:TextBox ID="ID" placeholder="Please Enter ID Number" runat ="server"></asp:TextBox>




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_Demo1ConnectionString %>" SelectCommand="sp_find_chasis#" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ID" Name="Client_ID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Chassis_#" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Chassis_#" HeaderText="Chassis_#" ReadOnly="True" SortExpression="Chassis_#" />
        </Columns>
    </asp:GridView>






</asp:Content>

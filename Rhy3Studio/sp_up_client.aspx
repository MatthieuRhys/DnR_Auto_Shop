<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sp_up_client.aspx.cs" Inherits="Rhy3Studio.sp_up_client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    <br />
    <br />
    <br />
    <br />
    
    ID: <asp:TextBox ID="Client_ID" runat="server"></asp:TextBox>
    <br />
    <br />
   Address <asp:TextBox ID="Address" runat="server"></asp:TextBox>
        <br />
    <br />
    Phone Number <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
        <br />
    <br />
   Email Address: <asp:TextBox ID="Email" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_DemoConnectionString %>" SelectCommand="sp_up_client" SelectCommandType="StoredProcedure" UpdateCommand="sp_up_client" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="Client_ID" Name="ID" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="Address" Name="ADD" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Phone" Name="PN" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Email" Name="EA" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="ADD" Type="String" />
            <asp:Parameter Name="PN" Type="String" />
            <asp:Parameter Name="EA" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Client_ID" HeaderText="Client_ID" SortExpression="Client_ID" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>



</asp:Content>

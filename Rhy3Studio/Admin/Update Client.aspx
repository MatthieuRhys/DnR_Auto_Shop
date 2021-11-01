<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update Client.aspx.cs" Inherits="Rhy3Studio.Admin.Update_Client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <style> 

        h2, h5{
            text-align: center;

            font-weight: bold;

        }

        p{
            text-align:center;
            margin-bottom:40px;
            font-family: 'Book Antiqua';
        }

        #Button1{

            margin-left: 520px;

            height: 40px;

            width:150px;
        }

    </style>
    
    
    
    
    <h2> UPDATE CLIENT </h2>
    <h5> This is a stored Procedure used to update client info </h5>

  <p>  

      ID: <asp:TextBox ID="ID" runat="server"></asp:TextBox>

  </p> 


    <p> 

        Address:     <asp:TextBox ID="Address" runat="server"></asp:TextBox>
    </p>


    <p> 

        Phone:     <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
    </p>

 
    <p>  

        Email:  <asp:TextBox ID="Email" runat="server"></asp:TextBox>

    </p>

    
    <br /> 
    <br />
   <button type="submit" id="Button1" onclick="Btn_click" class="btn btn-success">Update</button>

    <br />
    <br />
    
 

    <br />



 




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_Demo1ConnectionString %>" SelectCommand="sp_up_client" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ID" Name="ID" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="Address" Name="ADD" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Phone" Name="PN" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Email" Name="EA" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="405px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Client_ID" HeaderText="Client_ID" SortExpression="Client_ID" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>

</asp:Content>


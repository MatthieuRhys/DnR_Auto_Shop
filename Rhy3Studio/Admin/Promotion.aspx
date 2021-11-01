<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Promotion.aspx.cs" Inherits="Rhy3Studio.Admin.Promotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    <style> 

        h2, h5{
            text-align: center;

            font-weight: bold;

        }

       /* p{
            text-align:center;
            margin-bottom:40px;
            font-family: 'Book Antiqua';
        }*/

        #Button1{

            margin-left: 520px;

            height: 40px;

            width:150px;
        }

    </style>
    
    
    
    
    <h2> Promotion </h2>
    <h5> This is a function to see who desrves a promotion </h5>

<%--  <p>  

     

  </p> --%>

     
    <br /> 
    <br />
   <button type="submit" id="Button1" onclick="Btn_click" class="btn btn-success">Find</button>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_Demo1ConnectionString %>" SelectCommand="SELECT c.Emp_num, e.Emp_num AS Expr1, e.EmpName, dbo.promotion(c.price, c.value1) AS Promotion FROM Car AS c INNER JOIN Employee AS e ON c.Emp_num = e.Emp_num"></asp:SqlDataSource>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Expr1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="444px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Emp_num" HeaderText="Emp_num" SortExpression="Emp_num" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" ReadOnly="True" SortExpression="Expr1" />
            <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
            <asp:BoundField DataField="Promotion" HeaderText="Promotion" ReadOnly="True" SortExpression="Promotion" />
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

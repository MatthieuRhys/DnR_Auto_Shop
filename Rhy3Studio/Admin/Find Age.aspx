<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Find Age.aspx.cs" Inherits="Rhy3Studio.Admin.Find_Age" %>
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

        #grid{
            padding-top:40px;
            margin-left:450px
        }

    </style>
    
    
    
    
    <h2>FIND AGE </h2>
    <h5> This is a function used to find the age of an employee(s) </h5>

  
 
  <p>  

      ID: <asp:TextBox ID="ID" runat="server"></asp:TextBox>

  </p> 

       <br />
   <button type="submit" id="Button1" onclick="Btn_click" class="btn btn-success">Find</button>

<div id="grid"> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_Demo1ConnectionString %>" SelectCommand="

select Emp_num, Empname, dbo.agecalc(DOB) as Age from employee where Emp_num =@LO">
        <SelectParameters>
            <asp:ControlParameter ControlID="ID" Name="LO" PropertyName="Text" />
        </SelectParameters>
</asp:SqlDataSource>


    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="94px" Width="298px" AutoGenerateColumns="False" DataKeyNames="Emp_num">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Emp_num" HeaderText="Emp_num" ReadOnly="True" SortExpression="Emp_num" />
            <asp:BoundField DataField="Empname" HeaderText="Empname" SortExpression="Empname" />
            <asp:BoundField DataField="Age" HeaderText="Age" ReadOnly="True" SortExpression="Age" />
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


    </div>




</asp:Content>

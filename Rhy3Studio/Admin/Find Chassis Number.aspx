<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Find Chassis Number.aspx.cs" Inherits="Rhy3Studio.Find_Chassis_Number" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <style>

        h1,h5{

            color:black;
            font-weight:bold;
        }

          #Button1{

            margin-left: 480px;

            height: 40px;

            width:150px;
        }

          .lk{

              color:black;
              margin-left:450px;
              margin-top:40px;
          }

          .po{
               margin-left:450px;
              margin-top:40px;
              text-align:center;
          }
    </style>


    <h1 style="text-align:center">FIND CHASSIS NUMBER </h1>

    <h5 style="text-align:center">Enter ID Number to Find The Chassis Number </h5>


    <div class="lk" >
   ID: <asp:TextBox ID="ID" Width="80" placeholder="ID" runat ="server"></asp:TextBox>
</div>
    <br />
    <br />
    <button type="submit" id="Button1" onclick="Btn_click" class="btn btn-success">Find</button>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_Demo1ConnectionString %>" SelectCommand="sp_find_chasis#" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ID" Name="Client_ID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="po">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Chassis_#" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="200px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Chassis_#" HeaderText="Chassis_#" ReadOnly="True" SortExpression="Chassis_#" />
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

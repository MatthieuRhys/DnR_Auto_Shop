﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Efficiency.aspx.cs" Inherits="Rhy3Studio.Most_Productive_Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_Demo1ConnectionString %>" SelectCommand="sp_fastest" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Emp_Num:
            <asp:TextBox ID="Emp_NumTextBox" runat="server" Text='<%# Bind("Emp_Num") %>' />
            <br />
            EmpName:
            <asp:TextBox ID="EmpNameTextBox" runat="server" Text='<%# Bind("EmpName") %>' />
            <br />
            FASTEST DAY:
            <asp:TextBox ID="FASTEST_DAYTextBox" runat="server" Text='<%# Bind("[FASTEST DAY]") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Emp_Num:
            <asp:TextBox ID="Emp_NumTextBox" runat="server" Text='<%# Bind("Emp_Num") %>' />
            <br />
            EmpName:
            <asp:TextBox ID="EmpNameTextBox" runat="server" Text='<%# Bind("EmpName") %>' />
            <br />
            FASTEST DAY:
            <asp:TextBox ID="FASTEST_DAYTextBox" runat="server" Text='<%# Bind("[FASTEST DAY]") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Employee ID:
            <asp:Label ID="Emp_NumLabel" runat="server" Text='<%# Bind("Emp_Num") %>' />
            <br />
            <br />
            Employee Name:
            <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Bind("EmpName") %>' />
            <br />
            <br />

            Days Taken To Sell Car:
            <asp:Label ID="FASTEST_DAYLabel" runat="server" Text='<%# Bind("[FASTEST DAY]") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
    
</asp:Content>

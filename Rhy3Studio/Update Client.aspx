<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update Client.aspx.cs" Inherits="Rhy3Studio.Update_Client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">






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
    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />

    <br />
    <br />

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupE_Demo1ConnectionString %>" SelectCommand="sp_up_client" SelectCommandType="StoredProcedure" UpdateCommand="sp_up_client" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ID" Name="ID" PropertyName="Text" Type="Int32" />
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


</asp:Content>

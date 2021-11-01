<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Rhy3Studio.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>


        .thumbnail {
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5);
   transition: 0.3s;
   min-width: 40%;
   border-radius: 5px;
 }

 .thumbnail-description {
   min-height: 40px;
 }

 .thumbnail:hover {
   cursor: pointer;
   box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 1);
 }
    </style>



    <div class="row">
  <div class="col-md-2">&nbsp;</div>
  <div class="col-md-8">
    <div class="row space-16">&nbsp;</div>
    <div class="row">
      <div class="col-sm-4">
        <div class="thumbnail">
          <div class="caption text-center" onclick="#">
            <div class="position-relative">
              <img src="images/WhatsApp%20Image%202021-10-31%20at%208.02.50%20PM.jpeg" style="width:280px;height:200px;" />
            </div>
            <h4 id="thumbnail-label"> Brittany Jackson</h4>
            <p><i class="glyphicon glyphicon-user light-red lighter bigger-120"></i>&nbsp;Auditor</p>
            <div class="thumbnail-description smaller">  " "   </div>
          </div>
          <div class="caption card-footer text-center">
            <ul class="list-inline">
              <li><i class="people lighter"></i> </li>
              <li></li>
              <li><i class="glyphicon glyphicon-envelope lighter"></i><a href="#">&nbsp;Help</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-2">&nbsp;</div>
  </div>
</div>







</asp:Content>

<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Rhy3Studio.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <style> 

        #brit{

            padding-left:400px;
            padding-bottom:20px;
        }

        h1{
            font-weight:bold;
            color:black;
        }

       p{
           color:black;
       }
    </style>
    
    
    
    
    
    <h1 style="text-align: center"> <%: Title%> </h1>


    <p class="text-break">
      Welcome to DnR Automotive, your head pick for master vehicle fixes and purchases in Jamaica, Our very educated ASE-Certified auto mechanics really have an enthusiasm for playing out a wide range of vehicle fix administrations, huge or little.
    
        Our group can get to the foundation of the issue and fix car glitches that other vehicle benefit focuses may miss. 


        DnR Automtive was curated by the four geniuses below


    </p>


    <div class="container">

        <div class="row">


            <div class="col-md-8"  id="brit"> 


                
                <img src="images/WhatsApp%20Image%202021-10-31%20at%208.02.50%20PM.jpeg" width="410" height="300" />

                <h3 style="margin-left:100px;color:black;font-weight:bold;"> Brittany Jackson</h3>



            </div>









        </div>

        <div  class="row">

            <div class ="col-md-4 " id="mor">
                <img src="images/WhatsApp%20Image%202021-10-31%20at%208.02.34%20PM.jpeg"   width="280" height="300" />

                <h3 style="margin-left:30px;color:black;font-weight:bold;"> Morrissa Davidson</h3>


            </div>



                <div class ="col-md-4 " id="matt" >

                    <img src="images/IMG-20190623-WA0113.jpg" style="margin-left:20px"  width="300" height="300"/>

                     <h3 style="margin-left:50px;color:black;font-weight:bold;"> Matthieu-Rhys Brown</h3>
            </div>




                <div class ="col-md-4 " id="josh">

                    <img src="images/PicsArt_21-09-26_08-55-48-729.jpg"  style="margin-left:20px"  width="300" height="300"/>

                     <h3 style="margin-left:70px;color:black;font-weight:bold;"> Joshua Nathan</h3>

            </div>



        </div>



    </div>

    
</asp:Content>

<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Rhy3Studio.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    
    
    
       
<!--Section: Contact v.2-->
<section class="mb-4">

    <!--Section heading-->
    <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
    <!--Section description-->
    <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within
        a matter of hours to help you.</p>

    <div class="row">

        <!--Grid column-->
        <div class="col-md-9 mb-md-0 mb-5">
            <form id="contact-form" name="contact-form" action="mailto:jjnathan72@gmail.com" method="POST">

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="name" name="name" class="form-control" placeholder="Please Enter Your Name Here">
                            <label for="name" class="">Your Name</label>
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="email" name="email" class="form-control" placeholder="Please Enter Your Email Here">
                            <label for="email" class="">Your Email</label>
                        </div>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="md-form mb-0">
                            <input type="text" id="subject" name="subject" class="form-control" placeholder="Please Enter Your Subject Here">
                            <label for="subject" class="">Subject</label>
                        </div>
                    </div>
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-12">

                        <div class="md-form">
                            <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea" placeholder="Please Enter Your Message Here"></textarea>
                            <label for="message">Your Message</label>
                        </div>

                    </div>
                </div>
                <!--Grid row-->

            </form>

            <div class="text-center text-md-left">
                <a class="btn btn-primary" onclick="document.getElementById('contact-form').submit();">Send</a>
            </div>
            <div class="status"></div>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-3 text-center">
            <ul class="list-unstyled mb-0">
                <li><i class="fas fa-map-marker-alt fa-2x"></i>
                    <img src="images/GPS.png" class="img-responsive"  width="30" height="30" />
                    
                    <p class="text-break">
                        
                        
                            90 Main Street
                           Santa Cruz, St.Elizabeth

                    </p>
                </li>
                 
                <li><i class="fas fa-phone mt-4 fa-2x"></i>
                    <img src="images/PHONE.png" class="img-responsive"  width="25" height="25" />
                    <p>
                       
                         (876)568-7874
                    </p>
                </li>
                
                <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                   
                     <img src="images/email-icon-121.png" class="img-responsive"  width="30" height="30" />
                    <p> <a href="mailto:mattxrhys12@gmail.com">Dnrauto34@gmail.com</a></p>
                </li>
            </ul>
        </div>
        <!--Grid column-->

    </div>

</section>

    
    
</asp:Content>

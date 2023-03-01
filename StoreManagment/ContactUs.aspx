<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="StoreManagment.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">





    <div class="row no-gutters">
        <div class="col-md-7">
            <div class="contact-wrap w-100 p-md-5 p-4">
                <h3 class="mb-4">Contact Us</h3>
                <br />
                <div id="contactForm" name="contactForm" class="contactForm">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="label" for="name">Full Name</label>
                                <asp:TextBox ID="Txt_fullname" runat="server" class="form-control" placeholder="Name" ReadOnly="True"></asp:TextBox>
                                
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="label" for="email">Email Address</label>
                                <asp:TextBox ID="Txt_emailaddress" runat="server" class="form-control" placeholder="Email" ReadOnly="True" ></asp:TextBox>
                                
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="label" for="subject">Subject</label>
                                <asp:TextBox ID="Txt_subject" runat="server" placeholder="Subject" class="form-control"></asp:TextBox>
                                
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="label" for="#">Message</label>
                                <asp:TextBox ID="Txt_msg" runat="server" class="form-control" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                                
                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="col-md-12">
                            <br />
                            <div class="form-group">
                                <br />
                                <asp:Button ID="Btn_submit" runat="server" class="btn btn-primary" Text="Send" OnClick="Btn_submit_Click" />
                               
                                <br />
                                &nbsp;<div class="submitting"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-5 d-flex align-items-stretch">
            <div class="info-wrap w-100 p-5 contact" style="background-image: url(image/contact.jpg);">
            </div>
        </div>
    </div>
    <hr />
    
					<div class="row mb-5">
                        <div class="col-md-3">
                            <div class="dbox w-100 text-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-map-marker"></span>
                                </div>
                                <div class="text">
                                    <p><span>Address:</span> 282 Omnagar, Sakkardara,Nagpur 440024</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="dbox w-100 text-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-phone"></span>
                                </div>
                                <div class="text">
                                    <p><span>Mobile No.:</span> <a href="tel://9665090395">+91 9665090395</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="dbox w-100 text-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-paper-plane"></span>
                                </div>
                                <div class="text">
                                    <p><span>Email:</span> <a href="kunaltalwekar786@gmail.com">kunaltalwekar@gmail.com</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="dbox w-100 text-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-globe"></span>
                                </div>
                                <div class="text">
                                    <p><span>Website :</span> <a href="https://kunaltalwekar.blogspot.com/">https://kunaltalwekar.blogspot.com/</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
   
	<script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>

</asp:Content>

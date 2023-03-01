<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="StoreManagment.ProfilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
   
    <div class="container emp-profile" style="background-image:url('image/back2.jpg'); height: 835px; margin-top: 0px;">
        <div>
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                        <asp:Image ID="Img_pic" runat="server"  Height="152px" Width="217px" />
&nbsp;<div class="file btn btn-lg btn-primary">
                            Change Photo
                               
                      <asp:FileUpload ID="FUP1" runat="server" />

                        </div>
                    </div>
                </div>
               

            </div>
            <br />
            <br />
            <div class="row">

                <div class="col-md-8">
                    
                       

                            <div class="row">
                                <div class="col-md-6">
                                    <label>Name</label>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        <asp:TextBox ID="profileName" runat="server" Text='<%# Eval("Name") %>' ></asp:TextBox>
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Email</label>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        <asp:TextBox ID="profileEmail" runat="server" ReadOnly="True"></asp:TextBox>
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Mobile No: </label>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        <asp:TextBox ID="profileMobile" runat="server" Text='<%# Eval("MobileNo") %>'></asp:TextBox>
                                    </p>
                                </div>

                            </div>
                      <div class="row">
                                <div class="col-md-6">
                                    <label>Password: </label>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        <asp:TextBox ID="ProfilePassword" runat="server" Text='<%# Eval("Password") %>'></asp:TextBox>
                                    </p>
                                </div>

                            </div>
                      <div class="row">
                                <div class="col-md-6">
                                    <label>Confirm Password: </label>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        <asp:TextBox ID="ProfileConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="ProfileConfirmPassword" ControlToValidate="ProfilePassword" ErrorMessage="Password doesn't Match" ForeColor="Red"></asp:CompareValidator>
                                    </p>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <asp:Button ID="Btn_edit" class="profile-edit-btn" runat="server" Text="Edit Profile" OnClick="Btn_edit_Click" />

                                </div>
                            </div>


                       

                    </div>
               
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="StoreManagment.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="content/toastr.css" rel="stylesheet" />
    <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="image/Login.jpg" alt="Image" class="img-fluid" height="500px">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <h3>Welcome to  KT Store</h3>
             
            </div>
         
              <div class="form-group first">
                  <asp:Label ID="usenamelogin" runat="server" Text="Email ID"></asp:Label>
                 <asp:TextBox ID="user_email" runat="server" class="form-control" placeholder="Enter your username" TextMode="Email"></asp:TextBox>
              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user_email" ErrorMessage="Enter register Email" ForeColor="Red"></asp:RequiredFieldValidator>--%>

              </div>
              <div class="form-group last mb-4">
                  <asp:Label ID="userpassword" runat="server" Text="Password"></asp:Label>
                  <asp:TextBox ID="user_password" runat="server" class="form-control" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                  <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="user_password" ErrorMessage="Enter Proper password" ForeColor="Red"></asp:RequiredFieldValidator>
              --%>
                
              </div>
              
              <div class="d-flex mb-5 align-items-center">

                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                  <asp:LinkButton ID="LBForgot" runat="server" OnClick="LBForgot_Click">Forgot Password ? </asp:LinkButton>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:LinkButton ID="LBSignup" runat="server" OnClick="LBSignup_Click"> Create a Account </asp:LinkButton>
                <%--<span class="ml-auto"><a href="#" class="forgot-pass">Forgot Password </a></span> --%>
              </div>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btn_login" runat="server" Text="LOGIN" class="btn btn-block btn-primary" OnClick="Btn_login_Click" />
              
             <br />
                  <asp:Label ID="LblMsgLogin" runat="server" ForeColor="Red"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <div class="d-flex mb-5 align-items-center">
              
                </div>
                
             

           
           
            </div>
          </div>
          
        </div>
       
      </div>
    </div>
  </div>
    <script src="Scripts/toastr.js"></script>
</asp:Content>


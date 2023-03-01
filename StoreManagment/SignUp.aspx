<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="StoreManagment.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    <div class="container" style="margin-top: 0px">
      <div class="row">
        <div class="col-md-6">
          <img src="image/signup1.jpg" alt="Image" class="img-fluid" height="500px">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">

              <h3>Register for  more offer....</h3>
             
            </div>
         
              
                 </div>
              <div class="form-group last mb-4">
                  <asp:Label ID="lblusername" runat="server" Text="Name"></asp:Label>
                 <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Enter your name"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Enter Proper Name" ForeColor="Red"></asp:RequiredFieldValidator>
              </div> 
                 <div class="form-group last mb-4">
                  <asp:Label ID="lblemail" runat="server" Text="Email Id"></asp:Label>
                  <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Enter your email" TextMode="Email"></asp:TextBox>
              
              </div>
               <div class="form-group last mb-4">
                  <asp:Label ID="lblmoblie" runat="server" Text="Mobile Number"></asp:Label>
                  <asp:TextBox ID="mobile" runat="server" class="form-control" placeholder="Enter your mobile number"></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobile" ErrorMessage="Enter Valid 10 digit Mobile Number" ValidationExpression="\d{10}" ForeColor="Red"></asp:RegularExpressionValidator>
              </div>
              <div class="form-group last mb-4">
                  <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
                  <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Enter your password" TextMode="Password"></asp:TextBox>

              </div>
             <div class="form-group last mb-4">
                  <asp:Label ID="lblconfirmpassword" runat="server" Text="Confirm Password"></asp:Label>
                  <asp:TextBox ID="cpassword" runat="server" class="form-control" placeholder="Confirm your password" TextMode="Password"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpassword" ControlToValidate="password" ErrorMessage="Password doesn't Match" ForeColor="Red"></asp:CompareValidator>
              </div>
                 <div class="form-group last mb-4">
                  <asp:Label ID="profilePic" runat="server" Text="Profile Pic: "></asp:Label>
                     <asp:FileUpload ID="FileUpload1" runat="server" />

              </div>
             
              
              <div class="d-flex mb-5 align-items-center">

                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;

                
                  <asp:LinkButton ID="LBSignup" runat="server" OnClick="LBSignup_Click">Have already an account ? Login here </asp:LinkButton>
              
              </div>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="Btn_sign" runat="server" Text="Sign UP" class="btn btn-block btn-primary" OnClick="Btn_sign_Click" />
                <br />
                <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="LBL_MSG" runat="server" ForeColor="#00CC00" Visible="false"></asp:Label>

           
           
              <br />
              <br />
              <br />

           
           
            </div>
          </div>
          
        </div>
       
      </div>
    </div>
 

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="StoreManagment.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-6 contents" style="padding-left:200px">
         <div class="mb-4">
                <h3>Hey,Restore Your Password if you Forgot....!!!</h3>

            </div>
        <div class="col-md-6">
            <img src="image/back1.jpg" alt="Image" height="300" width="1200px">
        </div>
        <iv class="col-md-8" style="width: 135%">
           <br />
            <center>
                <div class="form-group first">
                    <asp:Label ID="REG_EMAIL" runat="server" Text="Registerd Email Id :"></asp:Label>
                    <asp:TextBox ID="Txt_RegEmailid" runat="server" class="form-control" placeholder="Enter your registerd email" TextMode="Email" Width="414px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_RegEmailid" ErrorMessage="Enter register Email" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                <br />

                <div class="form-group last mb-4">
                    <asp:Button ID="Btn_forgot" runat="server" Text="Forgot" class="btn btn-block btn-primary" OnClick="Btn_forgot_Click" />
                </div>
       

        <div class="form-group first">

            <asp:Label ID="Lbl_yourPassword" runat="server" Text="" Visible="false"></asp:Label>
        &nbsp;</div>
                <asp:Label ID="Lb_ForgotMsg" runat="server" Text="Label" Visible="false"></asp:Label>
        </center>
        
              
        
            
    </div>

</asp:Content>

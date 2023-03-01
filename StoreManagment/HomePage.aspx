<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="StoreManagment.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="content/CARD2.css" rel="stylesheet" />
    <marquee behavior="scroll" direction="left" scrollamount="15">
        <img src="pic/Homepageimg.jpg" height="300" width="700" />
        <img src="https://images.pexels.com/photos/1669799/pexels-photo-1669799.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" height="300" width="700" />
        <img src="https://images.pexels.com/photos/6316067/pexels-photo-6316067.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" height="300" width="700" />
    </marquee>
    <hr />

    <h3 class="text-decoration-underline" style="color: #FF0000; text-align: center"><strong><em>Discount Upto 35% On Following Product </em></strong></h3>
    <div class="row">
     
    </div>

    <div class="container">
        <div class="row">
            <div class=" col-md-4">
                 <div class="card2">
                    <div class="imgBx">
                        <img src="https://images.pexels.com/photos/2258083/pexels-photo-2258083.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" width="300" height="300">
                    </div>
                    <div class="contentBx">
                        <h4>Chair</h4>
                        <a href="LoginPage.aspx">Buy Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                  <div class="card2">
                    <div class="imgBx">
                        <img src="https://images.pexels.com/photos/7018400/pexels-photo-7018400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" width="300" height="300">
                    </div>
                    <div class="contentBx">
                        <h4>SOFA SET</h4>
                        <a href="LoginPage.aspx">Buy Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                 <div class="card2">
                    <div class="imgBx">
                        <img src="https://images.pexels.com/photos/631411/pexels-photo-631411.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" width="300" height="300">
                    </div>
                    <div class="contentBx">
                        <h4>Tables</h4>
                        <a href="LoginPage.aspx">Buy Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

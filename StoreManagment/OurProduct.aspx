<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OurProduct.aspx.cs" Inherits="StoreManagment.OurProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="content/listview.css" rel="stylesheet" />
    <script src="Scripts/main.js"></script>
    <link href="content/CARD1.css" rel="stylesheet" />
   
     
 <div style="padding-right:550px">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
    Hello, <asp:Label ID="LBLEMAIL" runat="server" ForeColor="#FF0066"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TxtSearch" runat="server" placeholder="Search product" Width="646px"></asp:TextBox>&nbsp; <asp:Button ID="Btn_search" runat="server" Text="Search" OnClick="Btn_search_Click"/>
            <br />
            <br />
        &nbsp;<div style="width: 1666px">

      <div class="card">
        <asp:ScriptManager ID="Script1" runat="server"> </asp:ScriptManager>
        <asp:UpdatePanel ID="updatepanel1" runat="server">
                <ContentTemplate>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" OnItemCommand="DataList1_ItemCommand" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    
                      <asp:Image ID="Img_pic" runat="server" ImageUrl='<%#"/upload/"  + Eval("pic") %>' Height="200px" Width="200px" /><br />

                    <b> Product Id : </b>
                    <asp:Label ID="Txt_id" runat="server"  Text='<%# Eval("Pid") %>'></asp:Label><br />
                    <b> Product Name : </b>
                    <asp:Label ID="Txt_Pname" runat="server"  Text='<%# Eval("Pname") %>'></asp:Label><br />
                    <b>Product Rate: </b>
                    <asp:Label ID="Txt_Prate" runat="server" Text='<%# Eval("Prate") %>'></asp:Label><br />
                    <b>Quantity : </b>
                    <asp:TextBox ID="Txt_Qyt" runat="server" placeholder="Quantity"></asp:TextBox>
                    <br />
                   <%-- <asp:Label ID="Txt_Qyt" runat="server" Text='<%# Eval("Prate") %>'></asp:Label><br />--%>
                   
                    <b> Total : </b>
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                     <asp:Button ID="Btn_addcart" runat="server" Text="Add To Cart" CommandName="AddCART" CssClass="addtocart"/>
                    
                   

                </ItemTemplate>
               
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               
            </asp:DataList>
                    <div class="form-group last mb-4" style="padding-left: 700px; padding-top: 20px">
                         <asp:Button ID="Btn_cart" runat="server" Text="View Cart" class="viewCart" OnClick="Btn_cart_Click" Width="301px"  />
                    </div>
                   
                    </ContentTemplate>
            </asp:UpdatePanel>
          </div>
       </div>
             </div>
             </div>
           </div>
    </div>
   

</asp:Content>

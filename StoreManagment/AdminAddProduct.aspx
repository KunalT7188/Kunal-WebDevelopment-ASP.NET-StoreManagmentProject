<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminAddProduct.aspx.cs" Inherits="StoreManagment.AdminAddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="content/listview.css" rel="stylesheet" />
    <div class="content">
    <div class="container" style="margin-top: 0px">
      <div class="row">
      
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
                
              <div class="mb-4">

              <h3>Hello....
                  <asp:Label ID="Label_email" runat="server" Text=""></asp:Label>
                   
                  
              </h3>
             <hr />
            &nbsp;&nbsp;&nbsp;&nbsp;
                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtSearch" runat="server" placeholder="Search product" Width="539px"></asp:TextBox>&nbsp; <asp:Button ID="Btn_search" runat="server" Text="Search" OnClick="Btn_search_Click" />
                  <br />
            </div>
         
              
                 </div>
              <div class="form-group last mb-4">
                  <asp:Label ID="lblproductid" runat="server" Text="Product Id"></asp:Label>
                 <asp:TextBox ID="txtpid" runat="server" class="form-control" placeholder="Product Id" ReadOnly="True"></asp:TextBox>
                  <asp:Button ID="Btn_genrateid" runat="server" Text="Genrate Id" OnClick="Btn_genrateid_Click" class="btn btn-block btn-primary"/>
              
              </div> 
                 <div class="form-group last mb-4">
                  <asp:Label ID="lblproducdname" runat="server" Text="Product Name"></asp:Label>
                  <asp:TextBox ID="txtproductName" runat="server" class="form-control" placeholder="Enter Product Name" ></asp:TextBox>
              
              </div>
               <div class="form-group last mb-4">
                  <asp:Label ID="lblproductRate" runat="server" Text="Product Rate "></asp:Label>
                  <asp:TextBox ID="txtproductrate" runat="server" class="form-control" placeholder="Enter Rate"></asp:TextBox>
              
              </div>
              <div class="form-group last mb-4">
                  <asp:Label ID="LblQYT2" runat="server" Text="Product Quantity "></asp:Label>
                  <asp:TextBox ID="TxtproductQyt" runat="server" class="form-control" placeholder="Enter Available Quantity"></asp:TextBox>
              </div>
             <div class="form-group last mb-4">
                  <asp:Label ID="lblproductimage" runat="server" Text="Product Pic"></asp:Label>
                 <asp:FileUpload ID="ProductFileUpload" runat="server" />
                     </div>
             
              
              <div class="d-flex mb-5 align-items-center">

                  
                <asp:Button ID="Btn_addproduct" runat="server" Text="Add Product" class="btn btn-block btn-primary" OnClick="Btn_addproduct_Click"/>
                  &nbsp;&nbsp;&nbsp;
                
                  <asp:Button ID="btn_viewProduct" Text="View Product" runat="server" class="button" OnClick="btn_viewProduct_Click" />
            <hr />
            <hr />
              </div>
          </div>
            
             <asp:ScriptManager ID="Script1" runat="server"> </asp:ScriptManager>
        <asp:UpdatePanel ID="updatepanel1" runat="server">
                <ContentTemplate>
           <asp:ListView ID="ListView1" runat="server"  GroupPlaceholderID="groupPlaceholderID1" ItemPlaceholderID="itemPlaceholderID1" OnPagePropertiesChanging="ListView1_PagePropertiesChanging" OnItemCommand="ListView1_ItemCommand">
            <LayoutTemplate>
                <table class="styled-table">
                    <thead>
                    <tr>
                        <th> Serial No.</th>
                        <th> Product Pic</th>
                        <th> Product Id</th>
                        <th> Product Name</th>
                        <th> Product Rate</th>
                        <th> Product Quantity</th>
                        <th> Product Update</th>
                        <th> Product Remove</th>
                        
                        
                    </tr>
                        </thead>
                    <asp:PlaceHolder ID="groupPlaceholderID1" runat="server"></asp:PlaceHolder>
                                            <tr>
                           <td>
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="10">
                                    <Fields>
                                        <asp:NextPreviousPagerField  ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true" ShowNextPageButton="false"/>
                                        <asp:NumericPagerField  ButtonType="Link"/>
                                        <asp:NextPreviousPagerField  ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false"/>
                                    </Fields>
                                </asp:DataPager>
                                
                               
                            </td>
                        </tr>

                   
                </table>
            </LayoutTemplate>
            <GroupTemplate>
                <tr>
                    <asp:PlaceHolder runat="server" ID="itemPlaceholderID1"></asp:PlaceHolder>

                </tr>
            </GroupTemplate>
            <ItemTemplate>
                
                <td> <itemteplate>
                    <%# Container.DataItemIndex +1 %>
                     </itemteplate></td>
                <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%#"/upload/"  + Eval("pic") %>' Height="100px" Width="100px" /> </td>
                <td> <asp:Label ID="Lblid" runat="server" Text='<%# Eval("Pid") %>'></asp:Label></td>
                <td> </td>
                <td><%# Eval("Pname") %></td>
                <td> <asp:TextBox ID="TxtRATE" runat="server" Text='<%# Eval("prate") %>' placeholder="Enter Rate"></asp:TextBox></td>
                <td> <asp:TextBox ID="TxtQyt" runat="server" Text='<%# Eval("Quantity") %>' placeholder="Enter Quantity"></asp:TextBox></td>
                <td> <asp:Button ID="Btn_UPDATE" runat="server" Text="Update" CommandName="UpdateRate" CssClass="update" /></td>
                <td> <asp:Button ID="Btn_REMOVE" runat="server" Text="Remove" CommandName="Remove" CssClass="delete" /></td>
               
             
                
            </ItemTemplate>
            
            
          
        </asp:ListView>
        </ContentTemplate>
            </asp:UpdatePanel>
        </div>
       
      </div>
    </div>
 </div>

</asp:Content>

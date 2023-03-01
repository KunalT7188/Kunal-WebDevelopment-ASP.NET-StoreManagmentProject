<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BillPrint.aspx.cs" Inherits="StoreManagment.BillPrint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="content/listview.css" rel="stylesheet" />
    <div style="width: 1834px" class="text-start" >
           
          
            <div class="text-start">
           
          
            <br />
      
            Email Id&nbsp;&nbsp;&nbsp;:&nbsp;
            <asp:TextBox ID="Temail" runat="server" ReadOnly="true"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date :&nbsp;
            <asp:TextBox ID="Txt_date" runat="server" ReadOnly="true"></asp:TextBox>
    
 
            <br />
            <br />
          
    
       
            </div>
          
    
       
            <asp:ListView ID="ListView1" runat="server"  GroupPlaceholderID="groupPlaceholderID1" ItemPlaceholderID="itemPlaceholderID1" OnPagePropertiesChanging="ListView1_PagePropertiesChanging">
            <LayoutTemplate>
                <table class="styled-table">
                    <thead>
                    <tr>
                        <th> Serial No.</thc>
                        <th> Product Id</th>
                        <th> Product Name</th>
                        <th> Product Rate</th>
                        <th> Quantity </th>
                        <th> Amount</th>
                        
                    </tr>
                        </thead>
                    <asp:PlaceHolder ID="groupPlaceholderID1" runat="server"></asp:PlaceHolder>
                                            <tr>
                           <%-- <td>
                                <%--<asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="7" >
                                    
                                </asp:DataPager>
                                
                               
                            </td>--%>
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
                <td><%# Eval("Pid") %> </td>
                <td><%# Eval("Name") %></td>
                <td><%# Eval("Rate") %></td>
                 <td><%# Eval("Qyt") %></td>
                 <td><%# Eval("Amount") %></td>
             
                
            </ItemTemplate>
            
            
          
        </asp:ListView>
            <hr />
          <br />
           <FooterTemplate>
                            <asp:Label ID="Label2" runat="server" Text="Total Amount : "></asp:Label>
                             <asp:TextBox ID="amt" runat="server" ReadOnly="true"></asp:TextBox>
           </FooterTemplate>

               <div style="padding-top:20px">
                   <asp:Button ID="Button2" runat="server" Text="Download Recipt" class="bill" OnClick="Button2_Click" />
                    <asp:Button ID="Button1" runat="server" Text="Genrate Bill" class="bill"  OnClientClick="javascript:window.print();" />
               </div>
           
               <br />
               <br />
               ||<asp:Label ID="Label3" runat="server" Text="------------------Thank you For Shopping--------------" BorderColor="White" Font-Bold="True" Font-Italic="True" Font-Overline="False" ForeColor="#FF3300" style="color: #006600"></asp:Label>
               ||<br />
               <br />


          
        </div>


</asp:Content>

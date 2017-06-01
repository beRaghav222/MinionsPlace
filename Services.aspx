<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="user_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form runat="server">--%>
    
    <asp:HiddenField ID="hdfid" runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <h2> Our Services </h2>
        <div >
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
        <div class="col-lg-6 in-gp-tb">
					<div class="input-group">
                         <span class="input-group-btn">
                        <asp:TextBox ID="txtsearch" class="form-control" placeholder="Search for..." runat="server"></asp:TextBox>
                       
                        <asp:Button ID="btnsearch" OnClick="Button1_Click" class="btn btn-default" runat="server" Text="Go!" />
						</span>
							
						
					</div><!-- /input-group -->
				</div>
            </ContentTemplate>
        </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
       <ContentTemplate>
           <div class="sorting-left">   <label class="" >Filter By</label>  <asp:DropDownList AutoPostBack="true" class="multi-column-dropdown" OnSelectedIndexChanged="ddlfilterarea_SelectedIndexChanged" ID="ddlfilterarea"  runat="server">
            <asp:ListItem>Choose Area</asp:ListItem>
               </asp:DropDownList>  </div>
          
           
            </div>
    <div class="clearfix"></div>
    <div class="container">
    <asp:Repeater ID="Repeater1"  runat="server" >
        <ItemTemplate>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server"></asp:LinqDataSource>
           

            

               
            <div class="col-md-4 products-right-grids-bottom-grid">
						<div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
							<div class="new-collections-grid1-image">
								<a href="#" class="product-image">.///
                                    <div class="new-collections-grid1-image-pos products-right-grids-pos">
									<a href="#"><%#Eval("specialization_main") %></a>
								</div>
                                    <asp:Image ID="Image1" runat="server"  class="img-responsive" ImageUrl='<%#Eval("photo") %>' Height="180px" Width="100%"/></a>
								<div> <%#Eval("firstname") %> &nbsp; <%#Eval("lastname") %> </div>
								<div class="new-collections-grid1-right products-right-grids-pos-right">
									<div class="rating">
										<div class="rating-left">
                                            <asp:ImageButton ID="ImageButton1" class="img-responsive" ImageUrl="~/user/images/2.png" OnClick="ImageButton1_Click"  runat="server" />
											
										</div>
										<div class="rating-left">
                                            <asp:ImageButton ID="ImageButton2" class="img-responsive" ImageUrl="~/user/images/2.png"  runat="server" />
										
										</div>
										<div class="rating-left">
											
                                            <asp:ImageButton ID="ImageButton3" class="img-responsive" ImageUrl="~/user/images/2.png"  runat="server" />

										</div>
										<div class="rating-left">
											
                                            <asp:ImageButton ID="ImageButton4" class="img-responsive" ImageUrl="~/user/images/1.png"  runat="server" />
										</div>
										<div class="rating-left">
											
                                            <asp:ImageButton ID="ImageButton5" class="img-responsive" ImageUrl="~/user/images/1.png"  runat="server" />
										</div>
										<div class="clearfix"> </div>
									</div>
                                    </div>
                                
                            </div>
								
							</div>
							
							<p><%#Eval("Address") %></p>
                             <p><%#Eval("City") %></p>
							<div class="simpleCart_shelfItem products-right-grid1-add-cart">
								<p><div class="col-md-3 footer-grid animated wow slideInLeft"><i class="glyphicon glyphicon-earphone"><%#Eval("contact") %></i></div>
                                     <span class="item_price">&nbsp; &nbsp; &nbsp;  </span></p>
							</div>
						</div>



        </ItemTemplate>


    </asp:Repeater>
    
        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
   
    
    </form>


</asp:Content>


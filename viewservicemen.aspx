<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewservicemen.aspx.cs" Inherits="admin_viewservicemen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="content">


<div class="women_main">
	<!-- start content -->
<div class="registration">
		<div class="registration_left">
		<h2>    View Servicemen </h2>
           
		<!-- [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
		    (function () {

		        // Create input element for testing
		        var inputs = document.createElement('input');

		        // Create the supports object
		        var supports = {};

		        supports.autofocus = 'autofocus' in inputs;
		        supports.required = 'required' in inputs;
		        supports.placeholder = 'placeholder' in inputs;

		        // Fallback for autofocus attribute
		        if (!supports.autofocus) {

		        }

		        // Fallback for required attribute
		        if (!supports.required) {

		        }

		        // Fallback for placeholder attribute
		        if (!supports.placeholder) {

		        }

		        // Change text inside send button on submit
		        var send = document.getElementById('register-submit');
		        if (send) {
		            send.onclick = function () {
		                this.innerHTML = '...Sending';
		            }
		        }

		    })();
		</script>
		 <div class="registration_form">
		 <!-- Form -->
             <div>
             <asp:DropDownList ID="ddlfilter" runat="server" OnSelectedIndexChanged="ddlfilter_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Choose Option</asp:ListItem>
                  <asp:ListItem>All</asp:ListItem>
                 <asp:ListItem>Adharid</asp:ListItem>
                
             </asp:DropDownList>
                  <asp:TextBox  id="txtfind"  runat="server" Visible="False"></asp:TextBox>
                 <asp:Button id="btnfind" runat="server" Text="find" OnClick="btnfind_Click1" Visible="False" />
             </div>
                <asp:Label ID="lblmsg" runat="server" Text=" "></asp:Label>

 <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >   
                    <HeaderTemplate>
                <table class="table" style="width: 100%;background-color:aliceblue;border-style:double;border-color:lavender; "  onmouseover="color:green;" draggable="auto" onfocus="color:green"; border="1">
                   
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tr>
                        <td>
                        
                    Adharid:   <%#Eval("adharid") %>
                            <br />
                      Name: <%#Eval("Firstname") %>
                             <br />
                  City: <%#Eval("city") %>
                             <br />
                       Gender:  <%#Eval("gender") %>
                             <br />
                        Contact:<%#Eval("contact") %><br />experience:<%#Eval("experience") %><br />Occupation: <%#Eval("specialization_main") %>
                             <br />
                         Pin:<%#Eval("pin") %><br />Address:<%#Eval("address") %><br />status:<%#Eval("status") %><br /></td>
                        <td> <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%#Eval("adharid") %>'>Delete</asp:LinkButton>  </td>
                    <td><a href="editservicemen.aspx?adharid=<%#Eval("Adharid") %>">Edit</a></td>
                       <td>
                           <asp:Image ID="Image1" Height="100" Width="80" ImageUrl='<%#Eval("photo") %>' runat="server" />
                        
                           </td>
                        </tr>
                  </ItemTemplate>
                    <FooterTemplate>
                </table>
                  </FooterTemplate>      

</asp:Repeater>


             

			</div>
			
			<!-- /Form -->
		</div>
	</div>
	
	<div class="clearfix"></div>
	</div>

	<!-- end content -->
	
</div>



</asp:Content>


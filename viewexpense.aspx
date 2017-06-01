<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewexpense.aspx.cs" Inherits="admin_viewexpense" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content">


<div class="women_main">
	<!-- start content -->
<div class="registration">
		<div class="registration_left">
		<h2>    View Expences</h2>
            <h3>
                <asp:Label ID="lblmsg" runat="server" Text=" "></asp:Label>
            </h3>
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

 <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >   
                    <HeaderTemplate>
                <table   style="width: 100%;background-color:aliceblue; border-style:ridge; border-color:aqua;  padding-bottom:inherit"  onmouseover="color:green;" draggable="auto" onfocus="color:green"; border="1";  >
                   
                    </HeaderTemplate>
                    <ItemTemplate>
                    <tr>
                        <td>
                        
                            <asp:Label ID="Label1" runat="server" Text="Expense Field:"> <%#Eval("expenseon") %></asp:Label>  
                            <br />
                      Description: <%#Eval("Description") %>
                             <br />
                  Expenditure: <%#Eval("Expenditure") %>
                             <br />
                       Expenditure Date:  <%#Eval("ExpenditureDate") %>
                             <br />
                       

                        </td>
                        <td> <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%#Eval("id") %>'>Delete</asp:LinkButton>  </td>
                    <td><a href="editexpense.aspx?id=<%#Eval("id") %>">Edit</a></td>
                     
                        </tr>
                  </ItemTemplate>
                    <FooterTemplate>
                    
                </table>
                         <p>  <- End of Record -></p>
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


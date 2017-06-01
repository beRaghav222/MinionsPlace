<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="admin_income" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content">


<div class="women_main">
	<!-- start content -->
<div class="registration">
		<div class="registration_left">
		<h2>   Payment Input </h2>
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
            <div style="width:100%;flex-align:center">
                <div style="width:60%;">
		 <div class="registration_form">
		 <!-- Form -->
			<div>
					<label>
                       
                       <asp:TextBox ID="txtadharid"  placeholder="Adhaar Card Number"  required=""  tabindex="1"  runat="server" OnTextChanged="txtadharid_TextChanged" ></asp:TextBox>
                       
                           
						
					</label>
				</div>
             <div>
					<label>
                       
                       <asp:Label ID="lbladarerror" runat="server" ForeColor="Red" Font-Size="Small" Text="*input corrrect adhar id" Visible="False"></asp:Label>
                       
                           
						
					</label>
				</div>
            
             <div>
					<label>
                       
                       <asp:DropDownList ID="ddlduration" runat="server" AutoPostBack="True" tabindex="2" OnSelectedIndexChanged="ddlduration_SelectedIndexChanged">
                           <asp:ListItem Value="30">1 month</asp:ListItem>
                           <asp:ListItem Value="90">3 months</asp:ListItem>
                           <asp:ListItem Value="180"> 6 months</asp:ListItem>
                           <asp:ListItem Value="365">1year</asp:ListItem>
                    </asp:DropDownList>
						
					</label>
                 </div>

                  <div>
					<label>
                       
                       <asp:TextBox ID="txtpayment"  placeholder="PAYMENT"  required="" tabindex="3"  runat="server" ReadOnly="True"></asp:TextBox>
						
					</label>
				</div>

                 <div>


                     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
					<label>
                       
                       <asp:TextBox ID="txtpaymentdate"  placeholder="PAYMENT DATE" required="" tabindex="4"  runat="server" OnTextChanged="txtpaymentdate_TextChanged1" AutoPostBack="True"></asp:TextBox>
						
					 <asp:CalendarExtender ID="txtpaymentdate_CalendarExtender" runat="server" TargetControlID="txtpaymentdate" Format="dd/MM/yyyy" >
                     </asp:CalendarExtender>
						
					</label>
				</div>
             <div>
                 <label>
                       
                       <asp:TextBox ID="txtdiscount"  placeholder="Discount" required=""  tabindex="5"   runat="server" AutoPostBack="True" OnTextChanged="txtdiscount_TextChanged"></asp:TextBox>
						
					<asp:FilteredTextBoxExtender ID="txtdiscount_FilteredTextBoxExtender" runat="server" TargetControlID="txtdiscount" ValidChars="1234567890">
                 </asp:FilteredTextBoxExtender>
						
					</label>
				</div>
             <div>
             <label>
                       
                       <asp:TextBox ID="txtenddate"  placeholder="End Date"  required=""  tabindex="6"  runat="server" ReadOnly="True"></asp:TextBox>
						
					<asp:FilteredTextBoxExtender ID="txtenddate_FilteredTextBoxExtender" runat="server" TargetControlID="txtenddate" ValidChars="1234567890">
                 </asp:FilteredTextBoxExtender>
						
					</label>
                 </div>
              
              <div>
             <label>
                       
                       <asp:TextBox ID="txtdescription"  placeholder="DESCRIPTION" required="" tabindex="7"   runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
						
					</label>
                </div>
            
                 

             







				
				<div>
					<asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"  />
				    <asp:Label ID="lbl1" runat="server" Text=" " Visible="False"></asp:Label>
                    <asp:Label ID="Label2" runat="server" ForeColor="#00CC66" Text="d" Visible="False"></asp:Label>
				</div>
				
</div>
			<!-- /Form -->
            
             </div>
		</div>
	</div>
	
	<div class="clearfix"></div>
	</div>

	<!-- end content -->
	</div>

      </div>
</asp:Content>


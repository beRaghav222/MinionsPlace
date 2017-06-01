<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="income.aspx.cs" Inherits="admin_income" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="content">


<div class="women_main">
	<!-- start content -->
<div class="registration">
		<div class="registration_left">
		<h2>    View Income </h2>
           
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
                 <asp:ListItem>Choose Options</asp:ListItem>
                 <asp:ListItem>Total</asp:ListItem>
                 <asp:ListItem>Yearly</asp:ListItem>
                <asp:ListItem>Monthly</asp:ListItem>
             </asp:DropDownList>
                  
                 <br />
                  
             </div>
              <asp:DropDownList ID="ddlmonth" runat="server" OnSelectedIndexChanged="ddlmonth_SelectedIndexChanged" AutoPostBack="True" Visible="False">
                 <asp:ListItem>Choose Options</asp:ListItem>
                 <asp:ListItem Value="01">Jan</asp:ListItem>
                 <asp:ListItem Value="02">Feb</asp:ListItem>
                <asp:ListItem Value="03">March</asp:ListItem>
                  <asp:ListItem Value="04">April</asp:ListItem>
                  <asp:ListItem Value="05">May</asp:ListItem>
                  <asp:ListItem Value="06">Jun</asp:ListItem>
                  <asp:ListItem Value="07">July</asp:ListItem>
                  <asp:ListItem Value="08">Aug</asp:ListItem>
                  <asp:ListItem Value="09">Sept</asp:ListItem>
                  <asp:ListItem Value="10">Oct</asp:ListItem>
                  <asp:ListItem Value="11">Nov</asp:ListItem>
                  <asp:ListItem Value="12">Dec</asp:ListItem>
             </asp:DropDownList>
             <div>




                              <div>
             <asp:DropDownList ID="ddlyear" runat="server" OnSelectedIndexChanged="ddlyear_SelectedIndexChanged" AutoPostBack="True" Visible="False">
                 <asp:ListItem>Choose Options</asp:ListItem>
                 <asp:ListItem>2016</asp:ListItem>
                 <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
             </asp:DropDownList>
                  
                 <br />
                  
             </div>



             </div>                



             <div  class="registration_form">
                 <asp:Label ID="lblmessage" runat="server" Text="" Visible="false"></asp:Label>  
             </div>
			</div>
			
			<!-- /Form -->
		</div>
	</div>
	
	<div class="clearfix"></div>
	</div>

	<!-- end content -->
	
</div>

</asp:Content>


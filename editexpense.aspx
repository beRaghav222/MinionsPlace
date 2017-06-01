<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="editexpense.aspx.cs" Inherits="admin_updateexpense" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="content">


<div class="women_main">
	<!-- start content -->
<div class="registration">
		<div class="registration_left">
		<h2>    Update Expense </h2>
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
			<div>
					<label>
                       <asp:hiddenfield id="hf" runat="server"></asp:hiddenfield>
                       <asp:TextBox ID="txtexpenseon"  placeholder="Field" required=""   runat="server"></asp:TextBox>
						
					</label>
				</div>
             <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
			
             <div>
					<label>
                        <asp:TextBox ID="txtdescription" required="" placeholder="Description"    runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
              <div>
					<label>
                        <asp:TextBox ID="txtexpenditure" required="" placeholder="Status"    runat="server" ></asp:TextBox>
                       
						
					</label>
				</div>
              <div>
					<label>
                       
                        <asp:TextBox ID="txtexpendituredate" required="" placeholder="ExpenditureDate"    runat="server" ></asp:TextBox>

                       
					<asp:CalendarExtender ID="txtexpendituredate_CalendarExtender"  runat="server" TargetControlID="txtexpendituredate">
                    </asp:CalendarExtender>
                       
						
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
	</div>
	
	<div class="clearfix"></div>
	</div>

	<!-- end content -->
	
</div>
</asp:Content>


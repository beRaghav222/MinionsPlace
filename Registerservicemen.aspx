<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Registerservicemen.aspx.cs" Inherits="admin_Registerservicemen" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 71px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">


<div class="women_main">
	<!-- start content -->
<div class="registration">
		<div class="registration_left">
		<h2>    Registration  </h2>
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
                       
                       <asp:TextBox ID="txtadharid"  placeholder="Adhaar Card Number"  required=""   runat="server"></asp:TextBox>
                         <asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="txtadharid" validationexpression="^[0-9]{12}$" errormessage="Please enter a Valid number!" />
						
					</label>
				</div>
             <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
				<div>
					<label>
                       
                       <asp:TextBox ID="txtfname"  placeholder="First Name" required=""   runat="server"></asp:TextBox>
						<asp:RegularExpressionValidator ID="regName" runat="server" 
       ValidationExpression="^[a-zA-Z'.\s]{1,50}"
       Text="Enter a valid name" ControlToValidate="txtfname" /> 
					</label>
				</div>
             <div>
					<label>
                           <asp:TextBox ID="txtlname"  placeholder="Last Name"  required=""  runat="server"></asp:TextBox>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
       ValidationExpression="^[a-zA-Z'.\s]{1,50}"
       Text="Enter a valid name" ControlToValidate="txtlname" /> 
					</label>
				</div>
              <div>
					<label>
                        <Table>
                       <tr><td ><asp:RadioButton ID="rbmale" runat="server" Text="Male" GroupName="gender" Checked="True" /></td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<td class="auto-style1"><asp:RadioButton ID="rbfemale" Text="Female" runat="server" GroupName="gender" /></td>
						</tr> </Table>
					</label>
				</div>
             <div>
					<label>
                        
                           <asp:TextBox ID="txtage"  placeholder="Age"  required=""  runat="server"></asp:TextBox>
						  <asp:RangeValidator ID="RangeValidator1" runat="server"

            ControlToValidate="txtage"

            ErrorMessage="Invalid Age. Please enter the age between 18 to 50."

            MaximumValue="50" MinimumValue="18" Type="Integer"></asp:RangeValidator>
					</label>
				</div>
             <div>
					<label>
                       
                       
                     <asp:TextBox ID="txtcontact"  placeholder="Contact" required=""   runat="server"></asp:TextBox>
                         <asp:RegularExpressionValidator 
           ID="regPhone" 
           runat="server" 
           ControlToValidate="txtcontact" 
           ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"
           Text="Enter a valid phone number" /> 
					</label>
				</div>


             <div>
					<label>
                        <asp:TextBox ID="txtExperience"  placeholder="Experience"  required=""  runat="server"></asp:TextBox>
                      
						
					</label>
				</div>
              <div>
					<label>
                        <asp:DropDownList ID="ddloccupation" runat="server" Height="26px" Width="151px"></asp:DropDownList>

                      </label>
						
					<br />
                       
					<label>	
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddloccupation" ErrorMessage="*select your occupation" InitialValue="choose Occupation"></asp:RequiredFieldValidator>
                       
						
					</label>
				</div>
             <div>
					<label>
                        <asp:TextBox ID="txtspecialsub"  placeholder="Description of Occupation"  required=""  runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
             <div>
					<label>
                        <asp:TextBox ID="txtcity"  placeholder="Area"  required=""  runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
              <div>
					<label>
                        <asp:TextBox ID="txtaddress"  placeholder="Address"  required=""  runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
              <div>
					<label>
                        <asp:TextBox ID="txtpin"  placeholder="Pincode"   required=""  runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator id="RegularExpressionValidator2"
ControlToValidate="txtpin"
ValidationExpression="^[0-9]{6}$"


ErrorMessage="Pin code must be 6 numeric digits"
runat="server"/>
						
					</label>
				</div>
             <div>
					<label>
                        <asp:TextBox ID="txtQualification"  placeholder="Qualification"  required=""  runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
              <div>
					<label>
                        <asp:DropDownList ID="ddlstatus" runat="server" Width="151px" Height="17px" >
                            
                            <asp:ListItem >Choose Payment Status</asp:ListItem>
                            <asp:ListItem>Not Paid</asp:ListItem>
                            <asp:ListItem>Paid</asp:ListItem>
                    </asp:DropDownList>
                      
						
					</label> &nbsp  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*please select status" BackColor="White" InitialValue="Choose Payment Status" ControlToValidate="ddlstatus" CssClass="dropdown"></asp:RequiredFieldValidator>
				</div>
              <div>
					<label>
                       
                        <asp:TextBox ID="txtjoiningdate"  placeholder="Joining Date"  required=""  runat="server" ></asp:TextBox>

                       
					<asp:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" TargetControlID="txtjoiningdate">
                    </asp:CalendarExtender>
                       
						
					</label>
				</div>
             <div>
                 <asp:fileupload runat="server" placeholder="your picture" id="picture"></asp:fileupload><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                 <asp:Image ID="Image1" runat="server" Height="141px" Width="186px" /></div>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Choose Your Pic" ControlToValidate="picture"></asp:RequiredFieldValidator>

             







				
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


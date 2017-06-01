<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="editservicemen.aspx.cs" Inherits="admin_editservicemen" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="content">


<div class="women_main">
	<!-- start content -->
<div class="registration">
		<div class="registration_left">
		<h2>    Update Information </h2>
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
                       
                       <asp:TextBox ID="txtadharid"  placeholder="Adhaar Card Number"    runat="server"></asp:TextBox>
						
					</label>
				</div>
          
				<div>
					<label>
                       
                       <asp:TextBox ID="txtfname"  placeholder="First Name"    runat="server"></asp:TextBox>
						
					</label>
				</div>
             <div>
					<label>
                           <asp:TextBox ID="txtlname"  placeholder="Last Name"    runat="server"></asp:TextBox>
						
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
                        
                           <asp:TextBox ID="txtage"  placeholder="Age"    runat="server"></asp:TextBox>
						
					</label>
				</div>
             <div>
					<label>
                       
                       
                     <asp:TextBox ID="txtcontact"  placeholder="Contact"    runat="server"></asp:TextBox>
					</label>
				</div>


             <div>
					<label>
                        <asp:TextBox ID="txtExperience"  placeholder="Experience"    runat="server"></asp:TextBox>
                      
						
					</label>
				</div>
             
             <div>
					<label>
                        <asp:DropDownList ID="ddloccupation" runat="server"></asp:DropDownList>
                       
						
					</label>
				</div>

              <div>
					<label>
                        <asp:TextBox ID="txtdescription"  placeholder="Description"    runat="server"></asp:TextBox>
                       
						
					</label>
				</div>

             <div>
					<label>
                        <asp:TextBox ID="txtcity"  placeholder="City"    runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
              <div>
					<label>
                        <asp:TextBox ID="txtaddress"  placeholder="Address"    runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
              <div>
					<label>
                        <asp:TextBox ID="txtpin"  placeholder="Pincode"    runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
             <div>
					<label>
                        <asp:TextBox ID="txtQualification"  placeholder="Qualification"    runat="server"></asp:TextBox>
                       
						
					</label>
				</div>
              <div>
					<label>
                       <%-- <asp:TextBox ID="txtstatus"  placeholder="Status"    runat="server"></asp:TextBox>--%>
                        <asp:DropDownList ID="ddlstatus" runat="server" Width="151px" Height="17px" >
                            
                            <asp:ListItem >Choose Payment Status</asp:ListItem>
                            <asp:ListItem>Not Paid</asp:ListItem>
                            <asp:ListItem>Paid</asp:ListItem>
						</asp:DropDownList>
					</label>
				</div>
              <div>
					<label>
                       
                        <asp:TextBox ID="txtjoiningdate"  placeholder="Joining Date"    runat="server" ></asp:TextBox>

                       
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                       
						
					<asp:CalendarExtender ID="txtjoiningdate_CalendarExtender" runat="server" TargetControlID="txtjoiningdate">
                    </asp:CalendarExtender>

                       
				
                       
						
					</label>
				</div>
             <div>
                 <asp:fileupload runat="server" placeholder="your picture" id="picture"></asp:fileupload><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                 <asp:Image ID="Image1" runat="server" Height="141px" Width="186px" /></div>


             







				
				<div>
					<asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"  />
				    <asp:Label ID="lbl1" runat="server" Text=" " Visible="False"></asp:Label>
                    <asp:Label ID="Label2" runat="server" ForeColor="#00CC66" Text="d" Visible="False"></asp:Label>
				</div>
				
             <asp:HiddenField ID="hf" runat="server" />
			<!-- /Form -->
		</div>
	</div>
	
	<div class="clearfix"></div>
	</div>

	<!-- end content -->
	
</div>
</div>
</asp:Content>


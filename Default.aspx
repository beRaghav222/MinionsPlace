<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="user_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    
    <div class="banner">
		<div class="container">
			<div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
				<h3>FREE ONLINE HOME SOLUTIONS</h3>
				<h4><span>20%<i>Off/-</i></span></h4>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Tuitor +Fixer + Manpower +Driver</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Cook+Carpenter+PestControl+Barber</p>
								</div>
							</div>
						</article>
					</div>
				</div>
					<script src="js/jquery.wmuSlider.js"></script> 
					<script>
					    $('.example1').wmuSlider();
					</script> 
			</div>
		</div>
	</div>
     <%-- <form runat="server">--%>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <!-- register -->
	<div class="register">
        <a name="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Register  Here</h3></a>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">If You are a Minion Register Your Self Here And Start Your Service Online</p>
			<div class="login-form-grids">
				<h5 class="animated wow slideInUp" data-wow-delay=".5s">Your Information</h5>
                <%--</form>--%>
                   
                <div class="animated wow slideInUp" data-wow-delay=".5s" >
                  	<div>
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
					    <label>
                       
                       <asp:TextBox ID="txtadharid"  placeholder="Adhaar Card Number"  required=""   runat="server" AutoPostBack="True" OnTextChanged="txtadharid_TextChanged"></asp:TextBox>
                      <asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="txtadharid" validationexpression="^[0-9]{12}$" errormessage="Please enter a Valid number!" />

                            
                             <asp:Label ID="lblmsg" runat="server" ForeColor="#FC0342" Visible="False" CssClass="warning" />
					</label></ContentTemplate></asp:UpdatePanel>
				</div>
            
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
                        <asp:DropDownList ID="ddloccupation" runat="server"></asp:DropDownList>
                       
						
					</label>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddloccupation" ErrorMessage="*Choose your Occupation" ForeColor="#FD0342" InitialValue="choose Occupation"></asp:RequiredFieldValidator>
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
			 <div>
                 <asp:fileupload runat="server" placeholder="your picture" id="picture"></asp:fileupload><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*choose your pic" ControlToValidate="picture" ForeColor="#FF0242"></asp:RequiredFieldValidator>    
             </div>
              
            
				
				<div>
					<asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"  />
				    <asp:Label ID="lbl1" runat="server" Text=" " Visible="False"></asp:Label>
                
				</div>
				
</div>
                    </div>
				
				
			</div>
		
		</div>
	</div>
<!-- //register -->

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="Tutor_Managment_System.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" style="box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);
-webkit-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);-moz-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
            <h1 class="jumbotron bg-primary text-white text-center">Student Signup</h1>
                </div>                                                              
        </div>
        <div class="row">
            <div class="col-md-4">

                <asp:TextBox ID="NameTextBox" CssClass="form-control" Placeholder="Enter Name" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="FathernameTextBox" CssClass="form-control" Placeholder="Enter Fathername" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="FathernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fahther Name is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" Placeholder="Enter Surname" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AgeTextBox" CssClass="form-control" Placeholder="Enter Age" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be with 5 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />
                <%--<asp:TextBox ID="CountryTextBox" CssClass="form-control" Placeholder="Enter Country" runat="server"></asp:TextBox>--%> 
                <asp:DropDownList ID="CountryDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CountryDropDownList_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator  InitialValue="Select Country" ControlToValidate="CountryDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4">

                <%--<asp:TextBox ID="CityTextBox" CssClass="form-control" Placeholder="Enter City" runat="server"></asp:TextBox>--%> 
                <asp:DropDownList ID="CityDropDownList" CssClass="form-control" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator  InitialValue="Select City" ControlToValidate="CityDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator18" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AddressTextBox" CssClass="form-control" TextMode="MultiLine" Rows="4" Columns="20" Placeholder="Enter Address" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="ClassTextBox" CssClass="form-control" Placeholder="Enter Class" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Class is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Going To" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Going To is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SubjectTextBox" CssClass="form-control" Placeholder="Enter Subject" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>

            </div>
            <div class="col-md-4">

                <asp:TextBox ID="ContactTextBox" CssClass="form-control" Placeholder="Enter Contact" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Contact is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="TutionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tution Type</asp:ListItem>
                    <asp:ListItem>online</asp:ListItem>
                    <asp:ListItem>physical</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tution Type" ControlToValidate="TutionTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="TutionType To is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tutor Prefer</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>MPHIL</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tutor Prefer" ControlToValidate="TutorPreferDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Select Tutor To is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="UsernameTextBox" CssClass="form-control" Placeholder="Enter Username" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" Placeholder="Enter Password" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" runat="server" ErrorMessage="Please Enter Strong Password" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" Placeholder="Re-Enter Password" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToCompare="PasswordTextBox" runat="server" ErrorMessage="Both Passwords Must be Identical" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </div>

        </div>
        <br />
        <div class="row">
        <div class="col-md-6 mx-auto">
            <asp:Button ID="StudentSignButton" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" OnClick="StudentSignButton_Click" />
    </div>
            </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto text-center">
                <a href="Student_Signup.aspx" class="btn btn-success">Signup As Student</a>
            <a href="Tutor_Signup.aspx" class="btn btn-info">Signup As Tutor</a>
            </div>
        </div>
        <br />
        </div>






    <br />
</asp:Content>

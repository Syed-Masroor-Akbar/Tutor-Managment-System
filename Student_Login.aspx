﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Login.aspx.cs" Inherits="Tutor_Managment_System.Student_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto" style="box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);">
                <br />
                <div class="jumbotron text-center text-white bg-primary">
                    <h2>Student Login </h2>
                </div>

                <asp:TextBox ID="Usernametxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Usernametxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="Passwordtxt" TextMode="Password" placeholder="Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Passwordtxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:Button ID="Student_LoginBtn" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="Student_LoginBtn_Click" />

                <div class="text-center">
                    <a href="Tutor_Login.aspx" class="text-center">Login As Tutor</a>
                </div>
                <br />
            </div>
        </div>

    </div>
    <br />
</asp:Content>

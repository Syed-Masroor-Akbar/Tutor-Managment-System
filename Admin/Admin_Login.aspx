<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Tutor_Managment_System.Admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="~/dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
</head>
<body style="background-color: whitesmoke;">
    <form id="form1" runat="server">
        <br />
        <div class="container">
            <div class="row">

                <div class="col-md-4 mx-auto" style="box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); border-radius: 10px;">
                    <br />
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Admin Login </h2>
                    </div>

                    <asp:TextBox ID="Usernametxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Usernametxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="Passwordtxt" TextMode="Password" placeholder="Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Passwordtxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>

                    <br />
                    <asp:Button ID="LoginBtn" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="LoginBtn_Click" />
                    <br />
                    <div><a href="../Default.aspx" class="btn btn-info btn-block">GO TO HOME </a></div>
                    <br />

                </div>
            </div>

        </div>
    </form>
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

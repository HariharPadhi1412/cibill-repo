<%@ Page Title="" Language="C#" MasterPageFile="~/CibilReportHomePage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CIBILReport.Authorization.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

        <div class="form-container flip">

            <div class="login-form">

                <h3 class="title">Login<span>
                    <img src="../images/phoenix-logo.png" style="float: right; height: 5%; width: 20%; border-radius:4px" /></span></h3>
                <div class="form-group" id="username">
                    <asp:TextBox ID="txtUserName" ClientIDMode="Static" runat="server" Text="" class="form-input"
                        tooltip-class="username-tooltip" placeholder="Username">
                    </asp:TextBox>
                    <span id="username-tool" class="tooltip username-tooltip">What's your username?</span>
                </div>
                <div class="form-group" id="password">
                    <asp:TextBox ID="txtPassword" ClientIDMode="Static" runat="server" Text="pass" TextMode="Password"
                        class="form-input" tooltip-class="password-tooltip" placeholder="Password">
                    </asp:TextBox>
                    <span class="tooltip password-tooltip">What's your password?</span>
                </div>
                <div class="form-group">
                    <button type="button" id="btnLogin" class="login-button" onclick="loginSubmit();">
                        Login</button>
                    <%--<asp:Button ID="btnLogin" runat="server" Text="Login" class="login-button" Style="cursor: pointer;"
                    OnClick="btnLogin_Click" />--%><br />
                    <asp:Label ID="lblLoginMessage" ClientIDMode="Static" class="remember-p" runat="server" Text=""></asp:Label>
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Cibil Module © Phoenix Softnet Technologies Pvt Ltd.</b>
            </div>
            <script src="../js/Login.js"></script>
        </div>

</asp:Content>

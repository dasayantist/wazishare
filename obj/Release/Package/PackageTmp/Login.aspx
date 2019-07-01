<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="wazishare.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div style="margin-left: 20%; margin-right:20%;margin-top:5%">


        <section id="loginForm">
        
        <asp:Login ID="Login1" runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
        <LayoutTemplate>
            <p class="validation-summary-errors">
                <asp:Literal runat="server" ID="FailureText" />
            </p>
            <fieldset>
                <legend>Log in Form</legend>
                <ol>
                    <li>
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">User name</asp:Label>
                        <asp:TextBox runat="server" ID="UserName" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                    </li>
                    <li>
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Password</asp:Label>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                    </li>
                    <li>
                        <asp:CheckBox runat="server" ID="RememberMe" />
                        <asp:Label ID="Label3" runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Remember me?</asp:Label>
                    </li>
                </ol>
                <asp:Button ID="Button1" runat="server" CommandName="Login" Text="Log in"  OnClick="Button1_Click"/>
            </fieldset>
        </LayoutTemplate>
    </asp:Login>



            <br />
        <p>

            <a runat="server" href="~/Default.aspx">Register</a>
            <%--<asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>--%>
            if you don't have an account.
        </p>
    </section>


    </div>
    

</asp:Content>

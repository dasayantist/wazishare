<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="wazishare.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

    <div style="width: 80%; margin-left: 10%; margin-right:10%; background: rgb(0, 255, 33); margin-bottom: 3%">

        

        <section id="loginForm"  style="margin-left: 10%; margin-right:10%; margin-top:0%; margin-bottom: 5%">
        <div style="width: 30%; margin-left: 35%; margin-right:35%">
                                <img src="Imgresource/finalpngwazi.png" style="width: 90%; height: 100px" />
                </div>
            
        <asp:Login ID="Login1" runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
        <LayoutTemplate>
            <p class="validation-summary-errors">
                <asp:Literal runat="server" ID="FailureText" />
            </p>
            
            <fieldset>
                
                
                
               <legend>Customer Log in</legend>
               
               <div>
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">UserName</asp:Label>
                        <asp:TextBox runat="server" class="form-control" ID="UserName" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                    </div>
                <div>
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Password</asp:Label>
                        <asp:TextBox runat="server" class="form-control" ID="Password" TextMode="Password" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                    </div>
                <div>
                        <asp:CheckBox runat="server" ID="RememberMe"></asp:CheckBox>
                        <asp:Label ID="Label3" runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Remember me?</asp:Label>
                  </div>


                <asp:Button ID="Button1" runat="server" CommandName="Login" Text="Log in" Class="btn btn-primary btn btn-block"  OnClick="Button1_Click"/>
            </fieldset>
        </LayoutTemplate>
    </asp:Login>



            <br />
            
        <p>
            
            <a runat="server" href="~/Default.aspx">Register</a>
            <%--<asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>--%>
            if you don't have an account.
        </p>
            <br /><br />

    </section>



    </div>
    

</asp:Content>

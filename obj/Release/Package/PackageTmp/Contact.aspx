<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="wazishare.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <%-- <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>425.555.0199</span>
        </p>
    </section>--%>
    <center>
    <asp:Image ID="Image1" runat="server" ImageUrl="Imgresource/finalpngwazi.png" 
            Width="192px" /></center>
    <h1> Contact us if you are facing any problem regarding the website and feedback for Product.
</h1>
 

    <b>Telephone Numbers</b><br />
    +254729314341<br />
     +254701256347<br />
     +254780821527<br />

    <section class="contact">
        <header>
          <h3>Email us with comments about this web site and Leave feedback and suggestions for our products:</h3>
        </header>
        <p>
            <span class="label">wazishare Support :</span>
            <span><a href="mailto:info@wazishare.co.ke">info@wazishare.co.ke</a></span>
        </p>
        <p>
            <span class="label">Software Developer: </span>
            <span><a href="mailto:info@wazishare.co.ke">ngetich@wazishare.co.ke</a></span>
        </p>
        <p>
            <span class="label">Technical Team:</span>
            <span><a href="mailto:info@wazishare.co.ke">dasayantist@wazishare.co.ke</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Zebra House<br />
            Ndanai, 20404-0001
        </p>
    </section>


</asp:Content>

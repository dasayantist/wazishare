<%@ Page Title="Customer Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cust_Info.aspx.cs" Inherits="wazishare.Cust_Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container" style="margin-top:1%; margin-bottom:3%">
    


      
     <div class="row">
         <div class="col-md-3">
               <label>Personal Details </label><br />
                    <label>ID NO : </label><asp:TextBox class="form-control" ID="national_id" runat="server"></asp:TextBox>
                    <label>Phone NO : </label><asp:TextBox class="form-control" ID="phoneNumber" runat="server"></asp:TextBox>
                    <label>FIRST NAME : </label><asp:TextBox class="form-control" ID="fName" runat="server"></asp:TextBox>
                    <label>OTHER NAME : </label><asp:TextBox class="form-control" ID="OName" runat="server"></asp:TextBox>
                    <label>Location : </label><asp:TextBox class="form-control" ID="loc" runat="server"></asp:TextBox>
                    <label>Ward : </label><asp:TextBox class="form-control" ID="ward" runat="server"></asp:TextBox>
                    <label>Constituency : </label><asp:TextBox class="form-control" ID="constituency" runat="server"></asp:TextBox>
                    <label>County : </label><asp:TextBox class="form-control" ID="county" runat="server"></asp:TextBox>
                    
             </div>
         <div class="col-md-3">
                <div >
                    <label>Contact Details </label><br />
                    <label>Gender : </label><asp:TextBox class="form-control" ID="gender" runat="server"></asp:TextBox>
                    <label>Address : </label><asp:TextBox class="form-control" ID="Address" runat="server"></asp:TextBox>
                    <label>Date of Reg : </label><asp:TextBox class="form-control" ID="Date_Reg" runat="server"></asp:TextBox>
                    <label>Sub-Location : </label><asp:TextBox class="form-control" ID="sloc" runat="server"></asp:TextBox>
                    <label>PIN/Password : </label><asp:TextBox class="form-control" ID="pin" runat="server"></asp:TextBox>
                    <label>NHIF A/C : </label><asp:TextBox class="form-control" ID="acno" runat="server"></asp:TextBox>
                    <label>Index NO : </label><asp:TextBox class="form-control" ID="Id" runat="server"></asp:TextBox>
                    <label>OTHER  : </label><asp:TextBox class="form-control" ID="TextBox8" runat="server"></asp:TextBox>
                    </div>
             </div>
         <div class="col-md-3">
                <div >
                    <label>Daily Target Details </label><br />
                   <label>A/C NO : </label><asp:TextBox class="form-control" ID="ac_acno" runat="server"></asp:TextBox>
                    <label>Net Amount : </label><asp:TextBox class="form-control" ID="namnt" runat="server"></asp:TextBox>
                    <label>Date of Subscribtion : </label><asp:TextBox class="form-control" ID="dos" runat="server"></asp:TextBox>
                    <label>Status : </label><asp:TextBox class="form-control" ID="status" runat="server"></asp:TextBox>   
                    <label>Membership : </label><asp:TextBox class="form-control" ID="isMember" runat="server"></asp:TextBox>
                   
                    <label>Contribution Details </label><br />
                    <label>NHIF A/C NO : </label><asp:TextBox class="form-control" ID="contrib_acno" runat="server"></asp:TextBox>
                    <label>Phone NO : </label><asp:TextBox class="form-control" ID="contrib_phoneNumber" runat="server"></asp:TextBox>
                    <label>Gross Amount  : </label><asp:TextBox class="form-control" ID="gross_amnt" runat="server"></asp:TextBox>
                    <label>Net Amount  : </label><asp:TextBox class="form-control" ID="net_amnt" runat="server"></asp:TextBox>
                    <label>Status  : </label><asp:TextBox class="form-control" ID="contrib_status" runat="server"></asp:TextBox>
                     
                    
                
                </div>
             </div>
         <div class="col-md-3">
                <div >
                    
                    <label>Daily Target Details </label><br />
                    <label>Gross Target  : </label><asp:TextBox class="form-control" ID="gross_target" runat="server"></asp:TextBox>
                    <label>No of Subscription  : </label><asp:TextBox class="form-control" ID="no_of_subs" runat="server"></asp:TextBox>
                    <label>Net Target  : </label><asp:TextBox class="form-control" ID="net_target" runat="server"></asp:TextBox>
                

                    </div>
             </div>



<asp:TextBox  ID="txt_search" runat="server"></asp:TextBox>
   <asp:Button ID="search" runat="server"  Text="Search"  OnClick="search_Click"/>

        <asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button Text="Upload" runat="server" OnClick="UploadFile" />
<hr />
<asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound">
        <Columns>
            <asp:BoundField HeaderText="File Id" DataField="FileId" />
            <asp:BoundField HeaderText="File Name" DataField="FileName" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="80" Width="80" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>


         </div>

         </div>



</asp:Content>

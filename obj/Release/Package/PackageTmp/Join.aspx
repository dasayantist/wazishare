<%@ Page Title="Lipa Na Airtime" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Join.aspx.cs" Inherits="wazishare.Join" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<div class="container" style="margin-top:1%;">

    <div class="row">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="text-align:center">SUBSCRIBE BY FILLING THE FORM BELOW AND SUBMIT</h3>
                    </div>
        <div class="col-md-4">
                <div class="form-group" >
                    <label>NATIONAL ID/MILLITARY ID</label><asp:TextBox ID="national_id"  class="form-control" runat="server"></asp:TextBox> 
                </div>
                <div class="form-group" >
                     <label>FIRST NAME</label><asp:TextBox class="form-control" ID="fName" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>GENDER</label> <asp:DropDownList ID="gendert"  class="form-control"  runat="server">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>DATE</label><asp:TextBox ID="tarehe"  type="date" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>LOCATION</label> <asp:DropDownList ID="location1"  class="form-control"  runat="server">
                    <asp:ListItem>SOMOSIEK</asp:ListItem>
                    <asp:ListItem>LITEIN</asp:ListItem>
                    <asp:ListItem>CHEPLANGET</asp:ListItem>
                    <asp:ListItem>OBOSI</asp:ListItem>
                    <asp:ListItem>LEPEKWET</asp:ListItem>
                    </asp:DropDownList>
                </div>

            </div>
             <div class="col-md-4">               
                <div class="form-group">
                    <label>CONSTITUENCY</label> <asp:DropDownList ID="constituency1"  class="form-control"  runat="server">
                    <asp:ListItem>SOTIKK</asp:ListItem>
                    <asp:ListItem>LITEIN</asp:ListItem>
                    <asp:ListItem>BURETI</asp:ListItem>
                    <asp:ListItem>BOMET EAST</asp:ListItem>
                    <asp:ListItem>KIPKELION</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>COUNTY</label> <asp:DropDownList ID="county1"  class="form-control"  runat="server">
                    <asp:ListItem>BOMET</asp:ListItem>
                    <asp:ListItem>KERICHO</asp:ListItem>
                    <asp:ListItem>NAROK</asp:ListItem>
                    <asp:ListItem>NANDI</asp:ListItem>
                    <asp:ListItem>NAIROBI</asp:ListItem>
                    <asp:ListItem>KIAMBU</asp:ListItem>
                    <asp:ListItem>MACHAKOS</asp:ListItem>
                    <asp:ListItem>EMBU</asp:ListItem>
                    <asp:ListItem>MERU</asp:ListItem>
                    <asp:ListItem>KIRINYAGA</asp:ListItem>
                    <asp:ListItem>MANDERA</asp:ListItem>
                    <asp:ListItem>MARAKWET</asp:ListItem>
                    <asp:ListItem>MIGORI</asp:ListItem>
                    <asp:ListItem>NYAMIRA</asp:ListItem>
                    <asp:ListItem>KISUMU</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                 </div>
                 <div class="form-group" >
                   <label>PHONE NUMBER</label><asp:TextBox ID="phoneNumber" class="form-control" runat="server"></asp:TextBox>
               </div>  
               <div class="form-group" >
                   <label>SECOND NAME</label><asp:TextBox ID="oName" class="form-control" runat="server" required="true" ></asp:TextBox>
               </div>
               <div class="form-group" >
                  <label>ADDRESS</label><asp:TextBox ID="address" class="form-control" runat="server"></asp:TextBox>
               </div>

        </div>
        <div class="col-md-4">                              
               <div class="form-group">
                    <label>SUB LOCATION</label> <asp:DropDownList ID="slocation1"  class="form-control"  runat="server">
                    <asp:ListItem>SOMOSIEK</asp:ListItem>
                    <asp:ListItem>LITEIN</asp:ListItem>
                    <asp:ListItem>CHEPLANGET</asp:ListItem>
                    <asp:ListItem>OBOSI</asp:ListItem>
                    <asp:ListItem>LEPEKWET</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>WARD</label> <asp:DropDownList ID="ward1"  class="form-control"  runat="server">
                    <asp:ListItem>SOMOSIEK</asp:ListItem>
                    <asp:ListItem>LITEIN</asp:ListItem>
                    <asp:ListItem>CHEPLANGET</asp:ListItem>
                    <asp:ListItem>OBOSI</asp:ListItem>
                    <asp:ListItem>LEPEKWET</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>PIN</label><asp:TextBox ID="pin" class="form-control"  type="password" runat="server"></asp:TextBox>
                </div>
                <div class="form-group" >
                  <label>NHIF NO</label><asp:TextBox ID="nhifno" class="form-control" runat="server"></asp:TextBox>
                </div>
                
        </div>
        

    </div>
                <div class="panel-heading" style="color:aqua;align-content:center">
                   <center> <asp:Button ID="Button1"  runat="server" Text="REGISTER" Class="btn btn-primary btn btn-block" OnClick="Button1_Click" />
                </center>
                       </div>
    
   </div>                
                                                             
</asp:Content>

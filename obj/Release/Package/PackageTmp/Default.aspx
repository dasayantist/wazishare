<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="wazishare._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style>

        body{
            background-color:black;
        }


        .vertical .carousel-inner {
            height: 80%;
        }

        .carousel.vertical .item {
            -webkit-transition: 0.6s ease-in-out top  ;
            -moz-transition: 0.6s ease-in-out top  ;
            -ms-transition: 0.6s ease-in-out top  ;
            -o-transition: 0.6s ease-in-out top  ;
            transition: 0.6s ease-in-out top ;
             left: 0;
        }
      

        .carousel.vertical .active {
            top: 0;
           
        }

        .carousel.vertical .next {
            top: 100%;
      
        }

        .carousel.vertical .prev {
            top: -100%;
       
        }

            .carousel.vertical .next.left,
            .carousel.vertical .prev.right {
                top: 0;
            }

        .carousel.vertical .active.left {
            top: -100%;

        }

        .carousel.vertical .active.right {
            top: 100%;
            
        }

        
    </style>


     <!--- Carousel -->
        <div class="container" style="width:96%;margin-left:2%;margin-right:2%">
        <div id="myCarousel"  class ="carousel slide" data-ride ="carousel" style="overflow: hidden; top: 0px; left: 0px; ">
        <!-- Indicators -->
   <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to ="0"class ="active"></li>
    <li data-target="#myCarousel" data-slide-to ="1"></li>
    <li data-target="#myCarousel" data-slide-to ="2"></li>
    <li data-target="#myCarousel" data-slide-to ="3"></li>
    <li data-target="#myCarousel" data-slide-to ="4"></li>
</ol>

<!-- Wrapper for slides-->
   <div class ="carousel-inner" role="listbox" style="width:100%;height:20%">
      <div class ="item active">
         <img src="Images/wazi/join.jpg"  alt ="Join" style="width: 100%;height:80%"/>
      <div class="carousel-caption">
         
       <h3> Board of Directors</h3>
      <p> Meeting Held at Bomet by Board Members </p >
          <p><a class="btn-primary" href="Join.aspx">See More</a></p>
  </div>
</div>
       <div class ="item">
       <%--<img src="Images/fast_delivery.jpg" alt ="Chania">--%>
           <img src="Images/wazi/boards.jpg" alt ="Committee" style="width: 100%;height:80%"/>
       <div class="carousel-caption">
       <h3> Board of Directors</h3 >
       <p> Meeting Held at Bomet by Board Members </p>
           <p><a class="btn-primary" href="SignUp.aspx">See More</a></p>
   </div>
</div>

       <div class ="item">
       <%--<img src="Images/fast_delivery.jpg" alt ="Chania">--%>
           <img src="Images/wazi/boards.jpg" alt ="Committee" style="width: 100%;height:80%"/>
       <div class="carousel-caption">
       <h3> Comittee Members</h3 >
       <p> Committe Meeting Held at Ndanai </p>
           <p><a class="btn-primary" href="Login.aspx">See More</a></p>
   </div>
</div>
       <div class ="item">
      <%--<img src="Images/time-saving.jpg" alt  ="Flower">--%>
           <img src="Imgresource/finalpngwazi.png" alt ="Tecnical team" style="width: 100%;height:80%"/>
      <div class="carousel-caption">
<h3> Technical Team </h3>
<p> at Nairobi Uhuru Park Retreat.  </p>
          <p><a class="btn-primary" href="Login.aspx">See More</a></p>
</div>
</div>
<div class ="item">
<%--<img src="Images/slider_1.png" alt ="Flower">--%>
    <img src="Images/wazi/sponsor.jpg" alt ="Sponsor" style="width: 100%;height:80%"/>
<div class="carousel-caption">
<h3> Board Members with Sponsor </h3>
<p> MCA Ndanai Hon. David Marithim </p >
    <p><a class="btn-primary" href="Login.aspx">See More</a></p>
</div>
</div>
</div>
    <!-- Left and right controls -->
<a class ="left carousel-control" href="#myCarousel" role="button" data-slide ="prev">
<span class ="glyphicon glyphicon-chevron-left" aria-hidden ="true"></span>
<span class ="sr-only"> Previous</span>
</a>
<a class ="right carousel-control" href="#myCarousel" role="button" data-slide ="next">
<span class ="glyphicon glyphicon-chevron-right" aria-hidden ="true"></span>
<span class ="sr-only"> Next</span>
</a>
</div>
            </div>
        <!--- Carousel -->


<div class="row" style="margin-top:4%">

    <div class="col-md-3">
       <img src="Imgresource/finalpngwazi.png" style="width:150px; height:50px;"/>
        <h4>wazishare at a glance</h4>
        <p>
          wazishare solution is the solution company that minimize credit reduction top up by the customers for the saving toward the payment of the NHIF subscription  
        </p>
        <p><a class="btn btn-default" href="Service.aspx">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-3">
       <img src="Imgresource/finalpngwazi.png" style="width:150px; height:50px;"/>
        <h4>wazishare solution mission</h4>
        <p>
            Our mission:
        </p>
        <p><a class="btn btn-default" href="Service.aspx">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-3">
        <img src="Imgresource/finalpngwazi.png" style="width:150px; height:50px;" />
        <h4>wazishare solution vision</h4>
        Our vision:
        <p><a class="btn btn-default" href="Service.aspx">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-3">
        <img src="Imgresource/finalpngwazi.png" style="width:150px; height:50px;"/>
       <h4>wazishare solution core values</h4>
       Our core values :<br />
        1. Transparency<br />
        2. Trust<br />
        <p><a class="btn btn-default" href="Service.aspx">Learn more &raquo;</a></p>
    </div>
</div>



    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-5">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-5">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-5">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>

</asp:Content>

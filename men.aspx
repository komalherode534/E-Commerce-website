<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="men.aspx.cs" Inherits="temppractise.men" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Hexashop Ecommerce HTML CSS Template</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->
   
</head>
<body>
  

      <!-- ***** Header Area Start ***** -->
 <header class="header-area header-sticky">
     <div class="container">
         <div class="row">
             <div class="col-12">
                 <nav class="main-nav">
                     <!-- ***** Logo Start ***** -->
                     <a href="index.html" class="logo">
                         <img style="height: 100px; width: 150px;" src="assets/images/Mehar-logo.png">
                     </a>
                     <!-- ***** Logo End ***** -->
                     <!-- ***** Menu Start ***** -->
                     <ul class="nav">
                         <li class="scroll-to-section"><a href="yuga.aspx" class="active">Home</a></li>
                         <li class="scroll-to-section"><a href="men.aspx">Men's</a></li>
                         <li class="scroll-to-section"><a href="Women.aspx">Women's</a></li>
                         <li class="scroll-to-section"><a href="kid.aspx">Kid's</a></li>
                         <li class="submenu">
                             <a href="javascript:;">Pages</a>
                             <ul>
                                 <li><a href="aboutus.aspx">About Us</a></li>
                                 <li><a href="login.aspx">Sign-in</a></li>
                                 <li><a href="signup.aspx"> Sign-up</a></li>
                                 <li><a href="Contact.aspx">Contact Us</a></li>
                             </ul>
                         </li>
                         
                         <li class="scroll-to-section"><a href="viewcart.aspx">My Account</a></li>
                         
                     </ul>        
                     <a class='menu-trigger'>
                         <span>Menu</span>
                     </a>
                     <!-- ***** Menu End ***** -->
                 </nav>
             </div>
         </div>
     </div>
 </header>
 <!-- ***** Header Area End ***** -->

    <div>
        <div class="page-heading" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="inner-content">
                    <h2>Check Our Mens Products</h2>
                    <span>We Offer an Extensive Selection Of Stylish Apparel and Clothing At Mehar. Get Deals and Low Prices On mens casual spring clothing At Mehar.</span>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    <div  style="background-color: darkslategray;">
        <h1 style="text-align:center; color:white; padding:10px;">Tradition Outfit</h1>
          <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" Width="100%">
      <ItemTemplate >
                        <a  href='<%# Eval("pid","productdetail.aspx?id={0}") %>' style="text-decoration:none;color:black" ">
               
                            <center>
                
                   <asp:Image ID="Image2" runat="server" style="height: 400px; width: 350px;"  onmouseover="bigImg(this)" onmouseout="normalImg(this)" ImageUrl='<%# Eval("pimg") %>'/>
  <br />
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' />
             <br />
                                <asp:Label runat="server" Text="Label">MRP=</asp:Label>
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("pprice") %>' style="margin-bottom: 25px;" />
                 
                   </center>
                       
                    </a>
                  
      </ItemTemplate>

  </asp:DataList>

              <h1 style="text-align:center; color:white; padding:10px;">Casual Outfit</h1>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" Width="100%">
    <ItemTemplate >
                        <a  href='<%# Eval("pid","productdetail.aspx?id={0}") %>' style="text-decoration:none;color:black" ">
             
                          <center>
              
                 <asp:Image ID="Image2" runat="server" style="height: 400px; width: 350px;" onmouseover="bigImg(this)" onmouseout="normalImg(this)" ImageUrl='<%# Eval("pimg") %>'/>
<br />
                              <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' />
           <br />
                                <asp:Label runat="server" Text="Label">MRP=</asp:Label>
                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("pprice") %>' style="margin-bottom: 25px;" />
               
                 </center>
                     
                  </a>
                
    </ItemTemplate>

</asp:DataList>

                      <h1 style="text-align:center; color:white; padding:10px;">Formal Outfit</h1>
        <asp:DataList ID="DataList3" runat="server" RepeatColumns="3" Width="100%">
    <ItemTemplate >
                        <a  href='<%# Eval("pid","productdetail.aspx?id={0}") %>' style="text-decoration:none;color:black" ">
             
                          <center>
              
                 <asp:Image ID="Image2" runat="server" style="height: 400px; width: 350px;" onmouseover="bigImg(this)" onmouseout="normalImg(this)" ImageUrl='<%# Eval("pimg") %>'/>
<br />
                              <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' />
           <br />
                                <asp:Label runat="server" Text="Label">MRP=</asp:Label>
                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("pprice") %>' style="margin-bottom: 25px; margin-left:30px;" />
               
                 </center>
                     
                  </a>
                
    </ItemTemplate>

</asp:DataList>
    </div>

  




   <!-- ***** Footer Start ***** -->
 <footer>
     <div class="container">
         <div class="row">
             <div class="col-lg-3">
                 <div class="first-item">
                     <div class="logo">
                         <img style="height: 100px; width: 150px;" src="assets/images/Mehar-logo.png" alt="hexashop ecommerce templatemo">
                     </div>
                     <ul>
                         <li><a href="#">529 Nehru Nagar, Nandanwan,Nagpur, India</a></li>
                         <li><a href="#">yugamehar@gmail.com</a></li>
                         <li><a href="#">9763646850</a></li>
                     </ul>
                 </div>
             </div>
             <div class="col-lg-3">
                 <h4>Shopping &amp; Categories</h4>
                 <ul>
                     <li><a href="men.aspx">Men’s Shopping</a></li>
                     <li><a href="Women.aspx">Women’s Shopping</a></li>
                     <li><a href="#">Kid's Shopping</a></li>
                 </ul>
             </div>
             <div class="col-lg-3">
                 <h4>Useful Links</h4>
                 <ul>
                     <li><a href="#">Homepage</a></li>
                     <li><a href="aboutus.aspx">About Us</a></li>
                     <li><a href="#">Help</a></li>
                     <li><a href="Contact.aspx">Contact Us</a></li>
                 </ul>
             </div>
             <div class="col-lg-3">
                 <h4>Help &amp; Information</h4>
                 <ul>
                     <li><a href="#">Help</a></li>
                     <li><a href="#">FAQ's</a></li>
                     <li><a href="#">Shipping</a></li>
                     <li><a href="#">Tracking ID</a></li>
                 </ul>
             </div>
             <div class="col-lg-12">
                 <div class="under-footer">
                     <p>Copyright © 2022 Mehar Co., Ltd. All Rights Reserved. 
                     
                     <br>Design: <a href="#" target="_parent" title="free css templates">Mehar's</a></p>
                     <ul>
                         <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                         <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                         <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                         <li><a href="#"><i class="fa fa-behance"></i></a></li>
                     </ul>
                 </div>
             </div>
         </div>
     </div>
 </footer>
 

 <!-- jQuery -->
 <script src="assets/js/jquery-2.1.0.min.js"></script>

 <!-- Bootstrap -->
 <script src="assets/js/popper.js"></script>
 <script src="assets/js/bootstrap.min.js"></script>

 <!-- Plugins -->
 <script src="assets/js/owl-carousel.js"></script>
 <script src="assets/js/accordions.js"></script>
 <script src="assets/js/datepicker.js"></script>
 <script src="assets/js/scrollreveal.min.js"></script>
 <script src="assets/js/waypoints.min.js"></script>
 <script src="assets/js/jquery.counterup.min.js"></script>
 <script src="assets/js/imgfix.min.js"></script> 
 <script src="assets/js/slick.js"></script> 
 <script src="assets/js/lightbox.js"></script> 
 <script src="assets/js/isotope.js"></script> 
 
 <!-- Global Init -->
 <script src="assets/js/custom.js"></script>

 <script>

     function bigImg(x) {
         x.style.height = "430px";
         x.style.width = "380px";
     }

     function normalImg(x) {
         x.style.height = "400px";
         x.style.width = "350px";
     }

     $(function () {
         var selectedClass = "";
         $("p").click(function () {
             selectedClass = $(this).attr("data-rel");
             $("#portfolio").fadeTo(50, 0.1);
             $("#portfolio div").not("." + selectedClass).fadeOut();
             setTimeout(function () {
                 $("." + selectedClass).fadeIn();
                 $("#portfolio").fadeTo(50, 1);
             }, 500);

         });
     });

 </script>
</body>
</html>

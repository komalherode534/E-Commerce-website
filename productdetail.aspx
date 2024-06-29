<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productdetail.aspx.cs" Inherits="temppractise.productdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>mehar</title>


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
    <div>
        
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
                         <li class="scroll-to-section"><a href="#men">Men's</a></li>
                         <li class="scroll-to-section"><a href="#women">Women's</a></li>
                         <li class="scroll-to-section"><a href="#kids">Kid's</a></li>
                         <li class="submenu">
                             <a href="javascript:;">Pages</a>
                             <ul>
                                 <li><a href="aboutus.aspx">About Us</a></li>
                                 <li><a href="products.html">Sign-in</a></li>
                                 <li><a href="single-product.html"> Sign-up</a></li>
                                 <li><a href="Contact.aspx">Contact Us</a></li>
                                  <li><a href="viewcart.aspx">View Cart</a></li>
                             </ul>
                         </li>
                         
                         <li class="scroll-to-section"><a href="order.aspx">My Account</a></li>
                     </ul>        
                     <a class='menu-trigger'>
                         <span>Menu</span>
                     </a>
                     <!-- ***** Menu End ***** -->
                 6</nav>
             </div>
         </div>
     </div>
 </header>
 <!-- ***** Header Area End ***** -->

    </div>
    <div>
        <form runat="server">
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
            <ItemTemplate>
                <table  style="margin-top:200px; margin-left:30px; width:80%;">
                    <tr>

                         <td style="width:40%;">
                 <asp:Image ID="Image2" runat="server" style="height: 500px; width: 400px;" ImageUrl='<%# Eval("pimg") %>'/>

                     </td>
                                       <td style="width:40%;"><center>
                             <asp:Label ID="Label1"  runat="server" Text='<%# Eval("pname") %>' Font-Bold="true" Font-Size="Large" />
<br />
 <br />
       <asp:Label runat="server" Text="Label">MRP=</asp:Label>
             <asp:Label ID="Label2" runat="server" Text='<%# Eval("pprice") %>' style="margin-bottom: 25px;" Font-Bold="true" Font-Size="Large"  />
                     <br />
                     <br />
                      <asp:Label runat="server" Text="Label">Discription=</asp:Label>
                     <asp:Label runat="server" Text='<%# Eval("discription") %>' style="margin-bottom: 25px;" Font-Bold="true" Font-Size="Large" />
                     <br />
                                           <br />
                  <asp:Label runat="server" Text="Label" style="color: red;" >Only 1 left in stock.</asp:Label>

                     <br />
                      <asp:Label runat="server" Text="Label">Size=</asp:Label>
                                         <asp:DropDownList ID="DropDownList1" runat="server">
                                   <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                   <asp:ListItem>XL</asp:ListItem>
                                   <asp:ListItem>2XL</asp:ListItem>
                               </asp:DropDownList>
                     <br /><br />
                                       
                     <br />
                                           <br />
                                           <br />
                                    
                       <a href="" style="text-decoration:none; background-color:green; padding:10px;">BUY NOW</a> &nbsp
                       <a href='<%# Eval("pid","addtocart.aspx?PID={0}")%>' style="text-decoration:none; background-color:yellow; padding:10px;">ADD TO CART</a>
                    
                     </center>
                   
                 </td>
                                  
                                

                         
                           
                                   
    
                            </center>
                          
                        </td>
                    </tr>
                   
                </table>
            </ItemTemplate>

        </asp:DataList>
        </form>
    </div>

    <div  style="background-color: darkslategray; margin-top:100px;">
              <h1 style="text-align:center; color:white; padding:10px;">Similar items</h1>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" Width="100%">
    <ItemTemplate >
                      <a  href='<%# Eval("pid","productdetail.aspx?id={0}") %>' style="text-decoration:none;color:black" ">
             
                          <center>
              
                 <asp:Image ID="Image2" runat="server" style="height: 400px; width: 350px;" ImageUrl='<%# Eval("pimg") %>'/>
<br />
                              <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' />
           <br />
                              <asp:Label runat="server" Text="Label">MRP=</asp:Label>
                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("pprice") %>' style="margin-bottom: 25px;" />
               
                 </center>
                     
                  </a>
                
    </ItemTemplate>

</asp:DataList>
    </div>
     <!-- ***** similer Area start ***** -->

    <div style="margin-top:120px;">
        <div class="col-lg-4">
        <div class="px-0 border rounded-2 shadow-0">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Similar items</h5>
              <div class="d-flex mb-3">
                <a href="#" class="me-3">
                  <img src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/8.webp" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                </a>
                <div class="info">
                  <a href="#" class="nav-link mb-1">
                    Rucksack Backpack Large <br />
                    Line Mounts
                  </a>
                  <strong class="text-dark"> $38.90</strong>
                </div>
              </div>

              <div class="d-flex mb-3">
                <a href="#" class="me-3">
                  <img src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/9.webp" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                </a>
                <div class="info">
                  <a href="#" class="nav-link mb-1">
                    Summer New Men's Denim <br />
                    Jeans Shorts
                  </a>
                  <strong class="text-dark"> $29.50</strong>
                </div>
              </div>

              <div class="d-flex mb-3">
                <a href="#" class="me-3">
                  <img src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/10.webp" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                </a>
                <div class="info">
                  <a href="#" class="nav-link mb-1"> T-shirts with multiple colors, for men and lady </a>
                  <strong class="text-dark"> $120.00</strong>
                </div>
              </div>

              <div class="d-flex">
                <a href="#" class="me-3">
                  <img src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/11.webp" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                </a>
                <div class="info">
                  <a href="#" class="nav-link mb-1"> Blazer Suit Dress Jacket for Men, Blue color </a>
                  <strong class="text-dark"> $339.90</strong>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div>
        
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
                     <li><a href="#">Men’s Shopping</a></li>
                     <li><a href="#">Women’s Shopping</a></li>
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
 
    </div>



</body>
</html>

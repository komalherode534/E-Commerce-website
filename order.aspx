<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="temppractise.order" %>

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
                 </nav>
             </div>
         </div>
     </div>
 </header>
 <!-- ***** Header Area End ***** -->


    <div  style="background-color: darkslategray; color:white; text-align:center; font-size: 50px; margin-top:100px;" >
        <asp:Label ID="Label2"   runat="server" Text="Label"></asp:Label>
    </div>
    <div style="text-align:center">
       <h1>Order Placed Successfully</h1> 
    </div>


    <form runat="server">
     <asp:DataList ID="DataList1" runat="server" Width="100%" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
       <HeaderTemplate>
           <asp:Table runat="server" Width="100%">
               <asp:TableRow>
                  
                   <asp:TableHeaderCell>
                       Product Name
                   </asp:TableHeaderCell>
                   <asp:TableHeaderCell>
                       Product Price
                   </asp:TableHeaderCell>
                                       <asp:TableHeaderCell>
                       Product Image
                   </asp:TableHeaderCell>
                                       <asp:TableHeaderCell>
                       Product Quantity
                   </asp:TableHeaderCell>
                                       <asp:TableHeaderCell>
                       Total Amount
                   </asp:TableHeaderCell>
               </asp:TableRow>
           </asp:Table>
       </HeaderTemplate>
       <ItemTemplate>
           <asp:Table runat="server" Width="100%">
               <asp:TableRow>
                   
                   <asp:TableCell Width="20%">
                       <asp:Label ID="pn" runat="server" Text='<%#Eval("pname") %>' />
                   </asp:TableCell><asp:TableCell Width="20%">
                       <asp:Label ID="Label1" runat="server" Text='<%#Eval("pprice") %>' />
                   </asp:TableCell><asp:TableCell Width="20%">
                       <asp:Image width="100" height="100" id="img" runat="server" imageurl='<%#Eval("pimg","{0}")%>' />
                   </asp:TableCell><asp:TableCell Width="20%">
                      
                       <asp:Label ID="txtqty" runat="server" Text='<%#Eval("pquantity") %>' />
                      
                   </asp:TableCell><asp:TableCell Width="20%">
                       <asp:Label ID="Label4" runat="server" Text='<%#Eval("total") %>' />
                   </asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList><br />
   <p style="margin-right:200px;" align="right">
       

    Grand Total : <asp:Label ID="lblgtotal" runat="server" Text="Label"></asp:Label></p>
        
        </form>>
        </body>
</html>

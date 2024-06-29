<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtobuy.aspx.cs" Inherits="temppractise.addtobuy" %>


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

         <!-- ***** main content start ***** -->
        <div style="margin-top:100px;"><form runat="server">
            <h2>
                 Select a delivery address
            </h2>
            <table>
                <tr>
                    <td>
                                    Full name (First and Last name)

                    </td>
                    <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
   
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
     <td>
                     Mobile number

     </td>
     <td>
                             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
   
     </td>
     <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
     </td>
 </tr>
                                <tr>
    <td>
                    Pincode

    </td>
    <td>
                              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
  
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    </td>
</tr>
                                                <tr>
    <td>
                                Flat, House no., Building, Company, Apartment,Area, Street, Sector, Village


    </td>
    <td>
                              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
  
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    </td>
</tr>
                                                <tr>
    <td>
                                Town/City/state


    </td>
    <td>
                             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
  
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
    </td>
</tr>

            </table>
            <br />
             <h2>
     Select a payment method
 </h2>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Cash on Delivery/Pay on Delivery" Font-Bold="True" GroupName="payment" />

                    </td>
                    <td>
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="payment" Font-Bold="True" Text="Card" />

                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
    <td>
        <h3>Enter card details</h3>

    </td>
    <td>

    </td>
    <td>

    </td>
</tr>
                                <tr>
                                   
    <td>
        Card number

    </td>
    <td>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </td>
    <td>
        Please ensure that you enable your card for online payments from your bank’s app.


    </td>
</tr>
                                                <tr>
                                   
    <td>
        Expiry date

    </td>
    <td>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    </td>
    <td>

    </td>
</tr>
                
            </table>

            <br />
           
            <br />
             <asp:Button ID="Button1" runat="server" Text=" Order/Use This Payment Mode" BackColor="#433D3D" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" />

            </form>


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

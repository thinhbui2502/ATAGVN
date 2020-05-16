<%--
  Created by IntelliJ IDEA.
  User: HoangLinh
  Date: 5/15/2020
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ATAG.VN</title>
    <link rel="stylesheet" href="boostrap/css/mainStyle.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="boostrap/css/bootstrap.css">

</head>
<body>


<%--HEADER--%>
<header class="header-section">
    <div class="container-fluid">
        <div class="inner-header">
            <div class="logo">
                <a href="./index.jsp"><img src="img/logo.png" alt="logo"></a>
            </div>
            <div class="header-right">
                <i class="fa fa-search"></i>
                <i class="fa fa-user"></i>
                <a href="#">
                    <i class="fa fa-shopping-bag"></i>
                    <span>2</span>
                </a>
            </div>
            <div class="user-access">
                <a href="#">Register</a>
                <a href="#" class="in">Sign in</a>
            </div>
            <nav class="main-menu mobile-menu">
                <ul>
                    <li><a class="active" href="./index.html">Home</a></li>
                    <li><a href="./categories.html">Category</a>
                        <ul class="sub-menu">
                            <li><a href="product-page.html">Samsung</a></li>
                            <li><a href="shopping-cart.html">Apple</a></li>
                        </ul>
                    </li>
                    <li><a href="./product-page.html">About</a></li>
                    <li><a href="./check-out.html">Blog</a></li>
                    <li><a href="./contact.html">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<div class="header-info">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 text-center">
                <div class="header-item">
                    <i class="fa fa-helicopter"></i>
                    <p>Free shipping 99K</p>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="header-item">
                    <i class="fa fa-gift"></i>
                    <p>Opening discount Upto 90%</p>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="header-item">
                    <i class="fa fa-gift"></i>
                    <p>Free for CodeGym Student</p>
                </div>
            </div>
        </div>
    </div>
</div>


<%--BODY--%>
<section class="cart-total-page spad">
    <div class="container">
        <form action="#" class="checkout-form">
            <div class="checkout-form-row" style="margin-bottom: 0px">
                <div class="col-lg-12">
                    <h3 style="margin-top: 50px; margin-bottom: 30px;">Your Cart</h3>
                </div>
                <div class="orderedListTable">
                    <table class="table table-hover" style="margin-bottom: 70px">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Ordered Product</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Amount</th>
                            <th scope="col" colspan="2"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Iphone</td>
                            <td>1000000</td>
                            <td><input type="text" name="orderQuantity" value="3"
                                       style="width: 50px;font-size: 16px; text-align: right;"></td>
                            <td>3000000</td>
                            <td><a href="#">Update</a></td>
                            <td><a href="#">Delete</a></td>
                        </tr>
                        <tr>
                            <td colspan="4">Total :</td>
                            <td>0xxx</td>
                        </tr>
                        <tr>
                            <td colspan="4">Delivery Cost (2%) :</td>
                            <td>2% of Total ?????</td>
                        </tr>
                        <tr>
                            <td colspan="4">Final :</td>
                            <td>0xxx</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>


            <div class="checkout-form-row">
                <div class="col-lg-12">
                    <h3>Your Information (to Order)</h3>
                </div>
                <div>
                    <form action="#" method="post" class="deliveryInformation">
                        <table style="margin-left: 20px; width: 1060px; margin-bottom: 50px;">
                            <tr>
                                <th style="width: 150px">Your Name*</th>
                                <td style="width: 500px"><input type="text" placeholder="Full Name" style="font-size: 15px" ></td>
                            </tr>
                            <tr>
                                <th style="width: 150px;">Your Email*</th>
                                <td style="width: 500px"><input type="text" placeholder="example@gmail.com" style="font-size: 15px"></td>
                            </tr>
                            <tr>
                                <th style="width: 150px;">Your Phone Number*</th>
                                <td style="width: 500px"><input type="text" style="font-size: 15px"></td>
                            </tr>
                            <tr>
                                <th style="width: 150px;">Your Address*</th>
                                <td style="width: 500px"><input type="text" style="font-size: 15px"></td>
                            </tr>
                            <tr>
                                <th style="width: 150px;">Payment Method</th>
                                <td style="width: 500px"><input type="text" value=" Cash on Delivery" disabled style="font-size: 15px"></td>
                            </tr>
                            <tr>
                                <th style="width: 150px;">Delivery Date</th>
                                <td style="width: 500px"><input type="text" value=" 3-5 working days " disabled style="font-size: 15px"></td>
                            </tr>
                            <tr>
                                <th colspan="2" style="text-align: right"><input type="submit" value="Order"></th>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </form>
    </div>
</section>

<%--FOOTER--%>
<footer class="footer-section spad">
    <div class="container">
        <div class="footer-widget">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h4>About us</h4>
                        <ul>
                            <li>CodeGym BC Java Mod 3</li>
                            <li>. Bui Duc Thinh (Leader)</li>
                            <li>. Nguyen Thai Binh</li>
                            <li>. Bui Xuan Huynh</li>
                            <li>. Hoang Manh Linh</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h4>Customer Care</h4>
                        <ul>
                            <li>Guarantee Center</li>
                            <li>Shipping & Delivery</li>
                            <li>Gallery</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h4>Our Services</h4>
                        <ul>
                            <li>Free Shipping</li>
                            <li>Free Returning</li>
                            <li>Terms and conditions</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h4>Information</h4>
                        <ul>
                            <li>Payment methods</li>
                            <li>Times and shipping costs</li>
                            <li>Product Returns</li>
                            <li>Shipping methods</li>
                            <li>Conformity of the products</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="social-links-warp">
        <div class="container">
            <div class="social-links">
                <a href="" class="instagram"><img src="img/instagram.PNG"><span> instagram</span></a>
                <a href="" class="pinterest"><img src="img/facebook.PNG"><span> facebook</span></a>
                <a href="" class="facebook"><img src="img/twitter.PNG"><span> twitter</span></a>
                <a href="" class="twitter"><img src="img/youtube.PNG"><span> youtube</span></a>
                <a href="" class="twitter"><p><b>GookLuck & Thank you all!!!</b></p></a>
            </div>
        </div>
    </div>
</footer>

</body>
</html>

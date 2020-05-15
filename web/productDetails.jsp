<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ATAG.VN</title>
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
    <link rel="stylesheet" href="boostrap/css/mainStyle.css">
</head>
<body>
<header class="header-section">
    <div class="container-fluid">
        <div class="inner-header">
            <div class="logo">
                <a href="./index.html"><img src="img/logo.png" alt="logo"></a>
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
                    <li><a href="./categories.html">Shop</a>
                        <ul class="sub-menu">
                            <li><a href="product-page.html">Product Page</a></li>
                            <li><a href="shopping-cart.html">Shopping Card</a></li>
                            <li><a href="check-out.html">Check out</a></li>
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

<hr>

<section class="product-page">
    <div class="container-fluid">
        <br>
        <div class="row">
            <div class="col-lg-6 text-left">
                <img src="img/phone1.png"/>
            </div>
            <div class="col-lg-6">
                <div class="product-content">
                    <h2>OPPO RENO3 PRO</h2>
                    <div class="price">
                        <h5 style="color:red;">12.990.000₫</h5>
                    </div>
                    <p class="description">
                        MÀN HÌNH ĐỤC LỖ KÉP ĐỘC ĐÁO : Sáng tạo và khác biệt <br>
                        CAMERA SELFIE KÉP ĐÊM 44MP + 2MP : Xuất hiện đầu tiên trên thế giới <br>
                        4 CAMERA 64MP ẢNH SIÊU NÉT 108MP <br>
                        SẠC NHANH <br>
                        HIỆU NĂNG CẢI TIẾN MẠNH MẼ <br>
                    </p>
                    <table class="tags">
                        <tr>
                            <td width="100" height="30">Màu sắc :</td>
                            <td>
                                <label>
                                    <select name="productColor">
                                        <option value="Đen">Đen</option>
                                        <option value="Trắng">Trắng</option>
                                    </select>
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>Tồn Kho :</td>
                            <td><input style="background-color: transparent; border-color: transparent" type="text" name="inStock" disabled value="2"></td>
                        </tr>
                    </table>
                    <div class="product-quantity">
                        <div class="pro-qty">
                            <input type="text" value="1" name="productQuantity">
                        </div>
                    </div>
                    <a href="#" class="primary-btn pc-btn" id="addToCart"><i class="fa fa-cart-plus"></i></a>
                    <a href="#" class="primary-btn pc-btn" id="backToMain">Tiếp tục mua hàng</a>
                </div>
            </div>
        </div>
    </div>
</section>

<br>
<footer class="footer-section spad">
    <div class="container">
        <div class="footer-widget">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-footer-widget">
                        <h4>About us</h4>
                        <ul>
                            <li>CodeGym BootCamp Java Mod 3</li>
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
                <a href="" class="instagram"><i class="fa fa-instagram"></i><img src="img/instagram.PNG"><span> instagram</span></a>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="Webpage_Nma.Contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="ICO Crypto is a modern and elegant landing page, created for ICO Agencies and digital crypto currency investment website.">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="images/candado2.png">
    <!-- Site Title  -->
    <title>Segurito</title>
    <!-- Vendor Bundle CSS -->
    <link rel="stylesheet" href="assets/css/vendor.bundle.css?ver=142">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="assets/css/style.css?ver=142">
    <link rel="stylesheet" href="assets/css/theme.css?ver=142">
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
                <header class="site-header is-sticky">

                    

                    <!-- Navbar -->
                    <div class="navbar navbar-expand-lg is-transparent" id="mainnav">
                        <nav class="container">
                            <a class="navbar-brand animated" data-animate="fadeInDown" data-delay=".65" href="index.aspx#header">
                                <img class="logo logo-dark" alt="logo" src="images/candado2.png" srcset="images/candado2.png 2x">
                                <img class="logo logo-light" alt="logo" src="images/candado2.png" srcset="images/candado2.png 2x">
                            </a>

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggle">
                                <span class="navbar-toggler-icon">
                                    <span class="ti ti-align-justify"></span>
                                </span>
                            </button>

                            <div class="collapse navbar-collapse justify-content-end" id="navbarToggle">
                                <ul class="navbar-nav animated" data-animate="fadeInDown" data-delay=".9">
                                    <li class="nav-item"><a class="nav-link menu-link" href="index.aspx#intro">Quienes somos?<span class="sr-only">(current)</span></a></li>
                                    <li class="nav-item"><a class="nav-link menu-link" href="index.aspx#tokenSale">Servicio</a></li>
                                    <li class="nav-item"><a class="nav-link menu-link" href="index.aspx#team">Equipo</a></li>
                                    <li class="nav-item"><a class="nav-link menu-link" href="Contacto.aspx">Contacto</a></li>
                                </ul>
                                <ul class="navbar-nav navbar-btns animated" data-animate="fadeInDown" data-delay="1.15">
                                    <li class="nav-item"><a class="nav-link btn btn-sm btn-outline menu-link" href="login.aspx">Ingresa</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <!-- End Navbar -->


         <!-- Start Section -->
        <div class="section section-pad section-bg-alt section-fix" id="contact">
            <div class="container">
                <div class="row text-center">
                    <div class="col">
                        <div class="section-head">
                            <h2 class="section-title animated" data-animate="fadeInUp" data-delay="0">Contacto
							<span>Segurito</span>
                            </h2>
                            <p class="animated" data-animate="fadeInUp" data-delay=".1">Quieres conocer más  acerca de nuestros servicios? Envia un mensaje en el siguiente formulario.</p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-8 offset-lg-2">

                        <div id="divmas" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert">
                            <strong>
                                <asp:Label ID="Label4" Text="" runat="server" />
                            </strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <form id="contact-form" class="form-message text-center" action="form/contact.php" method="get">
                            <div class="row">

                  
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <asp:Textbox ID="txtNombre" type="text" runat="server" name="nombre" class="form-control" required="true"></asp:Textbox>
                            <label for="name" class="">Tu nombre</label>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <asp:Textbox ID="txtCorreo" type="text" runat="server" name="correo" class="form-control" required="true"></asp:Textbox>
                            <label for="email" class="">Tu correo</label>
                        </div>
                    </div>
                            </div>

                <di|v class="row">
                    <div class="col-md-12">

                        <div class="md-form">
                            <asp:Textbox ID="txtMensaje" type="text" runat="server" name="mensaje" class="form-control" TextMode="MultiLine" required="true"></asp:Textbox>
                            <label for="message">Mensaje</label>
                        </div>
                    </div>
                </di|v>
                    </form>


                        <div class="text-center ">
                            <asp:Button class="btn btn-primary" id="btn1"  runat="server" Text="Enviar" OnClick="btn1_Click" ValidationGroup="1" />
                        </div>
                        <div class="status"></div>
                 </div>

             </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <ul class="contact-info">
                            <li class="animated" data-animate="fadeInUp" data-delay="0"><em class="fa fa-phone"></em><span>+56999999999</span></li>
                            <li class="animated" data-animate="fadeInUp" data-delay=".1"><em class="fa fa-envelope"></em><span>correo@segurito.com</span></li>
                            <li class="animated" data-animate="fadeInUp" data-delay=".2"><em class="fa fa-paper-plane"></em><span>Unete a Telegram</span></li>
                        </ul>
                    </div>
                </div>
                     
            </div>
        </div>
        <!-- End Section -->
         <!-- Start Section -->
        <div class="section footer-scetion no-pt section-pad-sm section-bg">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-12">
                        <ul class="social">
                            <li class="animated" data-animate="fadeInUp" data-delay="0"><a href="#"><em class="fab fa-facebook-f"></em></a></li>
                            <li class="animated" data-animate="fadeInUp" data-delay=".1"><a href="#"><em class="fab fa-twitter"></em></a></li>
                            <li class="animated" data-animate="fadeInUp" data-delay=".2"><a href="#"><em class="fab fa-youtube"></em></a></li>
                            <li class="animated" data-animate="fadeInUp" data-delay=".3"><a href="#"><em class="fab fa-github"></em></a></li>
                            <li class="animated" data-animate="fadeInUp" data-delay=".4"><a href="#"><em class="fab fa-bitcoin"></em></a></li>
                            <li class="animated" data-animate="fadeInUp" data-delay=".5"><a href="#"><em class="fab fa-medium-m"></em></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Section -->
        <!-- Preloader !remove please if you do not want -->
        <div id="preloader">
            <div id="loader"></div>
            <div class="loader-section loader-top"></div>
            <div class="loader-section loader-bottom"></div>
        </div>
        <!-- Preloader End -->
        <!-- JavaScript (include all script here) -->
        <script src="assets/js/jquery.bundle.js?ver=142"></script>
        <script src="assets/js/script.js?ver=142"></script>
    </form>
</body>
</html>

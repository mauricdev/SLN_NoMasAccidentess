﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Webpage_Nma.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
	
    <style type="text/css">
        .auto-style1 {
            position: relative;
            margin-bottom: 10px;
            left: 0px;
            top: 0px;
            height: 184px;
        }
    </style>
	
</head>
<body>
        <div>
            <body class="theme-dark" data-spy="scroll" data-target="#mainnav" data-offset="80">

                <div class="user-page d-flex align-items-center">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5 col-md-8 col-sm-8 text-center">
                                <div class="user-page-box">
                                    <div class="user-logo">
                                        <a href="#">
                                            <img src="images/candado2.png" srcset="images/candado2.png 2x" alt="icon">
                                        </a>
                                    </div>
                                    <h5>Ingresa a tu cuenta</h5>
                                     <form runat="server" id="form2" class="login-form">
                                        <div class="auto-style1">
                                            <asp:Label ID="Label1" runat="server" Text="Rut:"></asp:Label><br />
                                            <asp:Textbox ID="txtRut"  type="text" runat="server" class="input-bordered" OnTextChanged="txtnombre_TextChanged"></asp:Textbox>
                                        <div class="input-item">
                                            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label><br />
                                             <asp:TextBox ID="txtClave"  type="password" runat="server" class="input-bordered" OnTextChanged="txtnombre_TextChanged"></asp:TextBox>
                                        </div>
                                        <div class="gaps"></div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <asp:Button ID="Button1" runat="server" Text="Ingresar" class="btn btn-alt" OnClick="Button1_Click" style="height: 50px"/>
                                            <a href="Cliente/panel.aspx" class="simple-link">Olvidaste tu clave?</a>
                                        </div>
                                    </form>
                                </div>
                                <div class="gaps size-2x"></div>
                                <div class="form-note">
                                  Ingresa a este mundo de oportunidades para tu vida
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
            </body>
        </div>
</body>
</html>

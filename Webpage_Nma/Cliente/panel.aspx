<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="Webpage_Nma.panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div>
            <body class="user-dashboard">


                <div class="user-wraper">
                    <div class="container">
                        <div class="d-flex">
                            <div class="user-sidebar">
                                <div class="user-sidebar-overlay"></div>
                                <div class="user-box d-none d-lg-block">
                                    <div class="user-image">
                                        <img src="/images/user-thumb-lg.png" alt="thumb">
                                    </div>
                                   <h6 class="user-dropdown-name"><asp:Label runat ="server" ID="label3"></asp:Label></h6>
                                        <h5 class="user-dropdown-email"><asp:Label runat ="server" ID="label4"></asp:Label></h5>
                                </div>
                                <!-- .user-box -->
                                <ul class="user-icon-nav">
                                    <li><a href="panel.aspx"><em class="ti ti-dashboard"></em>Inicio</a></li>
                                    <li><a href="infoCliente.aspx"><em class="ti ti-pie-chart"></em>Estadisticas</a></li>
                                    <li><a href="ModificarClientes.aspx"><em class="ti ti-user"></em>Cuenta</a></li>
                                </ul>
                                <!-- .user-icon-nav -->
                                <div class="user-sidebar-sap"></div>
                                <!-- .user-sidebar-sap -->
                                <ul class="user-nav">
                                    <li>Contacto de soporte<span>soporte@segurito.com</span></li>
                                </ul>
                                <!-- .user-nav -->
                                <div class="d-lg-none">
                                    <div class="user-sidebar-sap"></div>
                                    <div class="gaps-1x"></div>
                                    <ul class="topbar-action-list">
                                        <li class="topbar-action-item topbar-action-link">
                                            <a href="../index.aspx"><em class="ti ti-home"></em>Inicio</a>
                                        </li>
                                        <!-- .topbar-action-item -->
                                        <!-- .topbar-action-item -->
                                    </ul>
                                    <!-- .topbar-action-list -->
                                </div>
                            </div>
                            <!-- .user-sidebar -->

                            <div class="user-content">
                                <div class="user-panel">
                                    <div class="row">
                                   <!-- .col -->
                                    </div>
                                    <!-- .row -->
                                    <div class="info-card info-card-bordered">
                                        <div class="row align-items-center">
                                            <div class="col-sm-3">
                                                <div class="info-card-image">
                                                    <img src="/images/candado2.png" alt="vector">
                                                </div>
                                                <div class="gaps-2x d-md-none"></div>
                                            </div>
                                            <div class="col-sm-9">
                                                <h4>Gracias por confiar en nosotros</h4>
                                                <p><asp:Label runat ="server" ID="label5"></asp:Label> ,Queremos darte  las gracias por confiar la seguridad en nostros.</p>
                                                <p>Siempre estaremos disponibles para ayudarte en lo que podamos.</p>
                                                <p>Te dejamos nuestro contacto para que siempre estemos en linea: Contacto@segurito.com</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- .info-card 
                                    <div class="token-card">
                                        <div class="token-info">
                                            <span class="token-smartag">Tus pago</span>
                                            <h2 class="token-bonus"><span>Fecha de inicio del plan</span></h2>
                                            <ul class="token-timeline">
                                                <li><span>START DATE</span>14 Jul 2018</li>
                                                <li><span>END DATE</span>25 Aug 2018</li>
                                            </ul>
                                        </div>
                                        <div class="token-countdown">
                                            <span class="token-countdown-title">THE BONUS END IN</span>
                                            <div class="token-countdown-clock" data-date="2020/04/10"></div>
                                        </div>
                                    </div>
                                    <!-- .token-card -->
                                    

                                </div>
                                <!-- .user-panel -->
                            </div>
                            <!-- .user-content -->
                        </div>
                        <!-- .d-flex -->
                    </div>
                    <!-- .container -->
                </div>
                <!-- UserWraper End -->
            </body>
        </div>
    
</asp:Content>
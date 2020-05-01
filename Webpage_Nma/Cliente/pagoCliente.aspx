<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="pagoCliente.aspx.cs" Inherits="Webpage_Nma.Cliente.pagoCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
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
                                    <h6 class="user-name">Stefan Harary</h6>
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
                                            <a href="#"><em class="ti ti-home"></em>Inicio</a>
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
                     <h2 class="user-panel-title">Actividad</h2>
                        <p>Acá podremos revisar las actividades que la empresa ha solicitado. </p>
                        <table class="data-table activity-table">
                            <thead>
                                <tr>
                                    <th class="activity-time"><span>Fecha</span></th>
                                    <th class="activity-time"><span>Hora</span></th>
                                    <th class="activity-time"><span>Monto</span></th>
                                    <th class="activity-time"><span>fecha vencimiento</span></th>
                                    <th class="activity-time"><span>Pagar</span></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion de las maquinas de aseo</td>
                                    <td>  <a href="#"  class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                                <tr>
                                    
                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion de las maquinas de aseo</td>
                                    <td><a href="#" class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                                <tr>
                             
                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion de las maquinas de aseo</td>
                                    <td><a href="#" class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                                <tr>
                                   
                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion de las maquinas de aseo</td>
                                    <td><a href="#" class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                                <tr>
                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion </td>
                                    <td><a href="#" class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                                <tr>

                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion de las maquinas de aseo</td>
                                    <td><a href="#" class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                                <tr>
                            
                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion de las maquinas de aseo</td>
                                   <td><a href="#" class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                                <tr>
                             
                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion de las maquinas de aseo</td>
                                    <td><a href="#" class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                                <tr>
                                 
                                    <td>08-16-2018</td>
                                    <td>09:04PM</td>
                                    <td>Capacitacion</td>
                                    <td>Capacitacion de las maquinas de aseo</td>
                                    <td><a href="#" class="btn btn-primary btn-xs clear-activity">pagar</a></td>
                                </tr>
                            </tbody>
                        </table>

                    </div><!-- .user-panel -->
                </div><!-- .user-content -->
                        </div>
                        <!-- .d-flex -->
                    </div>
                    <!-- .container -->
                </div>
                <!-- UserWraper End -->


                
            </body>
        </div>
    </form>
    
</asp:Content>
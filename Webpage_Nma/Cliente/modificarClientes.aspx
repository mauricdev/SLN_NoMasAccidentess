<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="modificarClientes.aspx.cs" Inherits="Webpage_Nma.Cliente.modificarClientes" %>


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
                                        <h6 class="user-dropdown-name"><asp:Label runat ="server" ID="label1"></asp:Label></h6>
                                        <h5 class="user-dropdown-email"><asp:Label runat ="server" ID="label2"></asp:Label></h5>
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
                                    <h2 class="user-panel-title">Modificar información</h2>

                                    <ul class="nav nav-tabs nav-tabs-line" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#personal-data">Informacion personal</a>
                                        </li>
                                    </ul>
                                    <!-- .nav-tabs-line -->
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="personal-data">
                                              <form  id="form2">

                                                  <div id="divmas" runat="server" class="alert alert-danger alert-dismissible fade show" role="alert">
                                                      <strong>
                                                          <asp:Label ID="Label4" Text="" runat="server" />
                                                      </strong>
                                                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                          <span aria-hidden="true">&times;</span>
                                                      </button>
                                                  </div>

                                                <div class="input-item input-with-label">
                                                    <label for="full-name" class="input-item-label">Nombre</label>
                                                 <asp:Textbox ID="txtnombre" type="text" runat="server" class="input-bordered" OnTextChanged="txtnombre_TextChanged" required="true"></asp:Textbox>
                                                </div>
                                                <!-- .input-item -->
                                                <div class="input-item input-with-label">
                                                    <label for="email-address" class="input-item-label">Correo</label>
                                                    <asp:Textbox ID="TextCorreo" type="Email" runat="server" class="input-bordered" required="true"></asp:Textbox>
                                                </div>
                                                   <div class="input-item input-with-label">
                                                    <label for="sur-name" class="input-item-label">Contraseña</label>
                                                    <asp:Textbox ID="TextApellido" type="password" runat="server" class="input-bordered" required="true"></asp:Textbox>
                                                </div>
                                                <!-- .input-item -->
                                                <div class="input-item input-with-label">
                                                    <label for="mobile-number" class="input-item-label">Telefono</label>
                                                    <asp:Textbox ID="TextNumber" type="text" runat="server" class="input-bordered" required="true"></asp:Textbox>
                                                </div>
                                                <!-- .input-item -->
                                                <div class="gaps-1x"></div>
                                                <!-- 10px gap -->
                                                <div class="d-sm-flex justify-content-between align-items-center">
                                                    <asp:Button class="btn btn-primary" id="btn1"  runat="server" Text="Actualizar" OnClick="btn1_Click" ValidationGroup="1" />
                                                    <div class="gaps-2x d-sm-none"></div>
                                                </div>
                                            </form>
                                            <!-- form -->
                                        </div>
                                        <!-- .tab-pane -->                                        

                                    </div>
                                    <!-- .tab-content -->
                                </div>
                                <!-- .user-panel -->
                            </div>
                            <!-- .user-content -->
                        </div>
                    <!-- .container -->
                </div>
                <!-- UserWraper End -->
               </div>

            </body>
        </div>
</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="infoCliente.aspx.cs" Inherits="Webpage_Nma.infoCliente" %>



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
                                    <h6 class="user-name">Stefan Harary</h6>
                                </div>
                                <!-- .user-box -->
                                <ul class="user-icon-nav">
                                    <li><a href="panel.aspx"><em class="ti ti-dashboard"></em>Inicio</a></li>
                                    <li><a href="infoClientes.aspx"><em class="ti ti-pie-chart"></em>Estadisticas</a></li>
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
                                    <div class="row">
                                        <!-- .col -->
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
                                    <div class="user-content">
                                        <div class="user-panel">
                                            <h2 class="user-panel-title">Actividad</h2>
                                            <p>Acá podremos revisar las actividades que la empresa ha solicitado. </p>
                                            <asp:GridView ID="GridView1" runat="server" class="data-table" style="text-align : center;" OnSelectedIndexChanging="GridView1_SelectedIndexChanged2" OnRowCancelingEdit="rowCancerEditEvent" OnRowDeleting="rowDeletingEvent" OnRowEditing="rowEditingEvent" OnRowUpdating="rowUpdatingEvent" AutoGenerateColumns ="False">                           
                                                <Columns>
                                                    <asp:TemplateField HeaderText="ID">
                                                        <ItemTemplate>
                                                            <asp:Label  ID="Label1" runat="server"   Width="30" Text='<% # Bind("ASES_ID") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Fecha">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Width="155"  Text='<% # Bind("ASES_FECHA") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>                                                   
                                                     <asp:TemplateField HeaderText="Tipo">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Width="100" Text='<% # Bind("ASES_TIPO") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Realizada">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server"  Width="60" Text='<% # Bind("ASES_REALIZADA") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>                                          
                                            <br />
                                        </div>
                                        <!-- .user-panel -->
                                    </div>
                                    <!-- .user-content -->
                                    <!-- .user-panel -->
                                </div>
                                <!-- .user-content -->
                            </div>
                            <!-- .d-flex -->
                        </div>
                        <!-- .container -->
                    </div>
                    <!-- UserWraper End -->
                    </div>

                    

                    
            </body>
        </div>
    
</asp:Content>
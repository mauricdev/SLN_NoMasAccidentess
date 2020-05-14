<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="infoCliente.aspx.cs" Inherits="Webpage_Nma.infoCliente" EnableEventValidation="true"%>



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
                                    <h2 class="user-panel-title">Lista</h2>

                                    <ul class="nav nav-tabs nav-tabs-line" role="tablist">
                                        
                                    </ul>
                                    <!-- .nav-tabs-line -->
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="personal-data">
                                              

                                                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GriedView1List_RowCommand">
                                                <Columns>

                                                    <asp:TemplateField HeaderText="ID">
                                                        <ItemTemplate>
                                                            <asp:Label  ID="idases" runat="server"   Width="30" Text='<% # Bind("ASES_ID") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Fecha">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Width="155"  Text='<% # Bind("ASES_FECHA") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>   
                                                    
                                                     <asp:TemplateField HeaderText="Tipo">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Width="150" Text='<% # Bind("ASES_TIPO") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:HyperLinkField text="Obtener id" DataNavigateUrlFields="ASES_ID" DataNavigateUrlFormatString="test.aspx?Id={0}"/>

                                                </Columns>
                                            </asp:GridView>

                                            
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
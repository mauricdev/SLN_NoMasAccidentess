<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checklist.aspx.cs" Inherits="Webpage_Nma.profesionales.Checklist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="user-content">
                                        <div class="user-panel">
                                            <h2 class="user-panel-title">Listado de visitas</h2>
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

</asp:Content>

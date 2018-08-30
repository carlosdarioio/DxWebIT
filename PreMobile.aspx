<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTest.Master" AutoEventWireup="true" CodeBehind="PreMobile.aspx.cs" Inherits="DxWebIT.PreMobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">

     <!-- Main content -->
    <section class="content">
        <div class="row">

            <!-- /.col -->
            <div class="col-md-12">
                <div class="nav-tabs-custom">

                    <div class="tab-content">
                        <div class="active tab-pane" id="Form1">
                            <dx:BootstrapFormLayout ID="BootstrapFormLayout1" runat="server" CssClasses-Control="form-group row">
                       <Items>

                        <dx:BootstrapLayoutItem Caption="Numero de Factura" ColSpanMd="8">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:BootstrapTextBox ID="numero" runat="server" Text="">
                                            </dx:BootstrapTextBox>
                                    </dx:ContentControl>
                                </ContentCollection>
                         </dx:BootstrapLayoutItem>


                            <dx:BootstrapLayoutItem HorizontalAlign="Right" ShowCaption="False" ColSpanMd="3">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:BootstrapButton ID="btnWF" runat="server" Text="Buscar" SettingsBootstrap-RenderOption="Primary" AutoPostBack="true">
                                         </dx:BootstrapButton>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapLayoutItem></Items>
                    </dx:BootstrapFormLayout>
                        </div>
                        <!-- /.tab-pane -->
                        <div class=" tab-pane" id="Form2">
                            

                            <dx:BootstrapFormLayout ID="BootstrapFormLayout2" runat="server" CssClasses-Control="form-group row">
                        <CssClasses Control="form-group row"></CssClasses>
                        <Items>
                            <dx:BootstrapLayoutItem Caption="Impresora" ColSpanMd="8">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:BootstrapComboBox ID="impresora" runat="server" SelectedIndex="0">
                                            <Items>
                                                <dx:BootstrapListEditItem Value="026TICKET" Text="TICKET BODEGA 026" />
                                                <dx:BootstrapListEditItem Value="081TICKET" Text="TICKET BODEGA 081" />
                                            </Items>
                                        </dx:BootstrapComboBox>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapLayoutItem>
                           

                            <dx:BootstrapLayoutItem Caption="Numero de Factura" ColSpanMd="8">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server" Text="" >                                         
                                        </dx:BootstrapTextBox>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapLayoutItem>


                            <dx:BootstrapLayoutItem HorizontalAlign="Right" ShowCaption="False" ColSpanMd="3">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:BootstrapButton ID="BootstrapButto1" runat="server" Text="ReImprimir" SettingsBootstrap-RenderOption="Primary" AutoPostBack="true">
                                        
                                        </dx:BootstrapButton>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapLayoutItem>

                        </Items>
                    </dx:BootstrapFormLayout>


                        </div>
                        <!-- /.tab-pane -->

                        <div class="tab-pane" id="Form3">
                            tab3
                        </div>
                        <!-- /.tab-pane -->
                    </div>
                    <!-- /.tab-content -->
                    <ul class="nav nav-tabs">
                        <li><a href="#Form1" data-toggle="tab">Form1</a></li>
                        <li ><a href="#Form2" data-toggle="tab">Form2</a></li>
                        <li class="active"><a href="#Form3" data-toggle="tab">Form3</a></li>
                    </ul>
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->


</asp:Content>

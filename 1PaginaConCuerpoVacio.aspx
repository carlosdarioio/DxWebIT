<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTest.Master" AutoEventWireup="true" CodeBehind="1PaginaConCuerpoVacio.aspx.cs" Inherits="DxWebIT._1PaginaConCuerpoVacio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cuerpo" runat="server">


     <!--inicio-->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">TEMAN</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                        <i class="fa fa-minus"></i>
                    </button>
                    <button id="clse" type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i>
                    </button>
                </div>
            </div>
            <div class="box-body">
                Especificar XXX
            <div class="form-horizontal">
                <!-- /.box-body -->
                <div class="box-body">
                    <dx:BootstrapFormLayout ID="BootstrapFormLayout1" runat="server" CssClasses-Control="form-group row">
                       
                    </dx:BootstrapFormLayout>
                </div>
                <!-- /fin .box-body -->

                <div class="box-footer">
                    <small>Llenar todos los datos </small>
                    <br>                    
                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text=""></dx:ASPxLabel>
                </div>
                <!-- /.box-footer -->
            </div>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->

        <div class="box">
            <div class="box-header">
                <h3 class="box-title">XXX Pendientes de Imprimir</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <%--<asp:GridView ID="GridView1" CssClass="table table-bordered table-striped" runat="server"></asp:GridView>--%>
                <dx:BootstrapGridView ID="BootstrapGridView1" CssClasses-Control="table table-bordered table-striped" runat="server" KeyFieldName="CustomerID">
                </dx:BootstrapGridView>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <small>Activar impresora para imprimir las XXX pendientes</small><br>
            </div>
        </div>
        <!-- /.box -->
    </section>
    <!--Fin-->

</asp:Content>

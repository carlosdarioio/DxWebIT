<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTest1.Master" AutoEventWireup="true" CodeBehind="WFactura.aspx.cs" Inherits="DXWeb18.WFactura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script type="text/javascript">
        //<ClientSideEvents KeyDown="function(s, e) { DoProcessEnterKey(e.htmlEvent); }" />
        function DoProcessEnterKey(htmlEvent) {
            if (htmlEvent.keyCode == 13) {
                ASPxClientUtils.PreventEventAndBubble(htmlEvent);
                //EstadoGuia();
                btnBuscar.click();
            }
        }
    </script>

  <!--inicio-->
   <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- CONTENT EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
            <h3 class="box-title">Estado De Factura</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
              Especificar Numero de Factura
            <div class="row">
              <div class="col-md-12">
                   <!-- /.form-group -->
                <div class="form-group">  
                     <dx:BootstrapFormLayout ID="BootstrapFormLayout1" runat="server" CssClasses-Control="form-group row">
                       <Items>

                        <dx:BootstrapLayoutItem Caption="Numero de Factura" ColSpanMd="8">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:BootstrapSpinEdit ID="numero2" runat="server" MinValue="0" MaxValue="9999999999" Increment="1" NumberType="Integer">
                                         <ValidationSettings ValidationGroup="Validation" >
                                            <RequiredField  IsRequired="true" ErrorText="Requiere Escecificar Numero de Factura"  />
                                             
                                            <%--<RegularExpression ValidationExpression="[0-9]{6}\b" ErrorText="Digitar Solo Numeros" />--%>
                                        </ValidationSettings>
                                         <ClientSideEvents KeyDown="function(s, e) { DoProcessEnterKey(e.htmlEvent); }" />
                                        </dx:BootstrapSpinEdit>
                                    </dx:ContentControl>
                                </ContentCollection>
                         </dx:BootstrapLayoutItem>

                          


                            <dx:BootstrapLayoutItem HorizontalAlign="Right" ShowCaption="False" ColSpanMd="3">
                                <ContentCollection>
                                    <dx:ContentControl>
                                       <%-- <dx:BootstrapButton ID="btnWF" runat="server" Text="Buscar" SettingsBootstrap-RenderOption="Primary" AutoPostBack="true">
                                            <SettingsBootstrap RenderOption="Primary"></SettingsBootstrap>
                                            <ClientSideEvents Click="function(s, e) { e.processOnServer = ASPxClientEdit.ValidateGroup('Validation'); }" />
                                            <CssClasses Icon="fa fa-check" />
                                        </dx:BootstrapButton>--%>
                                        <button type="button" class="btn btn-primary dxbs-button" id="btnBuscar" onclick="wFCT()"><li class="fa fa-check"></li> Buscar</button>                                         
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapLayoutItem></Items>
                    </dx:BootstrapFormLayout>                
                </div>
                <!-- /.form-group -->                
               
              </div>
              <!-- /.FIN col-md-12 -->
              
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.card-body -->
          <div class="card-footer">
             <small>Llenar todos los datos </small>
                    <br>                    
                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text=""></dx:ASPxLabel>
          </div>
        </div>
        <!-- /.card -->

          <!-- CONTENT EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
             <h3 class="box-title">Facturas:</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-12">
                   <!-- /.form-group -->
                <div class="form-group">  
                    <dx:BootstrapGridView ID="GridViewFEGuia" ClientInstanceName="GridViewFEGuia" CssClasses-Control="table table-bordered table-striped" runat="server" KeyFieldName="CustomerID">
                        <SettingsSearchPanel Visible="true" ShowApplyButton="true" />
                        <Settings ShowGroupPanel="true" />
                      <Columns>  
                          <dx:BootstrapGridViewDataColumn FieldName="Tipo" /> 
                          <dx:BootstrapGridViewDataColumn FieldName="Guia" /> 
                          <dx:BootstrapGridViewDataColumn FieldName="EstadoGuia" /> 
                          <dx:BootstrapGridViewDataColumn FieldName="Camion" /> 
                          <dx:BootstrapGridViewDataColumn FieldName="Motorista" />
                          <dx:BootstrapGridViewDataColumn FieldName="Codigo" />   
                          <dx:BootstrapGridViewDataColumn FieldName="Cliente" />                    
        <dx:BootstrapGridViewHyperLinkColumn FieldName="Facturas"   CssClasses-HeaderCell="table-striped" >            
            <PropertiesHyperLinkEdit  ClientInstanceName="FACTURA" NavigateUrlFormatString="~\VerDxF.aspx?Id={0}"  TextField="FACTURA" Target="_blank" >                
            </PropertiesHyperLinkEdit>
    </dx:BootstrapGridViewHyperLinkColumn> 
                          <dx:BootstrapGridViewDataColumn FieldName="ZONA" />  
                          <%--<dx:BootstrapGridViewDataColumn FieldName="DEPTO" />  
                          <dx:BootstrapGridViewDataColumn FieldName="CIUDAD" />  --%>
                        <dx:BootstrapGridViewDataColumn FieldName="Fecha" />                          
                         <dx:BootstrapGridViewDataColumn FieldName="EstadoFactura"  />                            
                          <dx:BootstrapGridViewDataColumn FieldName="Venta"  />                            
                                                    
                   </Columns>

                </dx:BootstrapGridView>                
                </div>
                <!-- /.form-group -->                
               
              </div>
              <!-- /.FIN col-md-12 -->
              
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.card-body -->
          
        </div>
        <!-- /.card -->


           


          <!-- /.card -->
          </div>

        </section>
    <!--Fin-->
    
    <script type="text/javascript">
        function wFCT() {
            GridViewFEGuia.Refresh();
          
        }
    </script>
</asp:Content>

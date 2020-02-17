<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTest1.Master" AutoEventWireup="true" CodeBehind="CambZnxFact.aspx.cs" Inherits="DXWeb18.CambZnxFact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script type="text/javascript">
        var lastCountry = null;
        function OnCountryChanged(cmbCountry) {
            if (cmbCity.InCallback())
                lastCountry = cmbCountry.GetValue().toString();
            else
                cmbCity.PerformCallback(cmbCountry.GetValue().toString());
        }
        function OnEndCallback(s, e) {
            if (lastCountry) {
                cmbCity.PerformCallback(lastCountry);
                lastCountry = null;
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
            <h3 class="card-title">Cambiar zona de factura
               <%-- SERIA MEJOR CAMBIARLAS ASI https://demos.devexpress.com/Bootstrap/GridView/Editing.aspx CASCADING COMBOBOX--%>


            </h3>
              <small>Para cambiar la zona de x factura buscarla y presionar clic en el numero que deseen cambiar.</small>

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

                      <!--FORM---------------------------------------------->

                       <dx:BootstrapFormLayout ID="BootstrapFormLayout1" runat="server" CssClasses-Control="form-group row">
                        <CssClasses Control="form-group row"></CssClasses>
                        <Items>                                                       

                            <dx:BootstrapLayoutItem Caption="Numero de Factura " ColSpanMd="8">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:BootstrapTextBox ID="numero" runat="server" Text="" HelpText="Ejemplo: 7558" MaskSettings-ErrorText="">
                                         <ValidationSettings ValidationGroup="Validation">
                                            <RequiredField IsRequired="true" ErrorText="No puede quedar Vacio" />
                                            
                                        </ValidationSettings>    
                                        </dx:BootstrapTextBox>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapLayoutItem>
                            

                            <dx:BootstrapLayoutItem HorizontalAlign="Right" ShowCaption="False" ColSpanMd="3">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:BootstrapButton ID="BootstrapButton1" runat="server" Text="Buscar" SettingsBootstrap-RenderOption="Primary" AutoPostBack="true">
                                            <SettingsBootstrap RenderOption="Primary"></SettingsBootstrap>
                                            <ClientSideEvents Click="function(s, e) { e.processOnServer = ASPxClientEdit.ValidateGroup('Validation'); }" />
                                            <CssClasses Icon="fa fa-check" />
                                        </dx:BootstrapButton>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapLayoutItem>

                        </Items>
                    </dx:BootstrapFormLayout>    
                      <!--FIN FORMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-->

                  </div>

                  </div>
                      <!-- /.form-group -->
                  <br />

                  <div class="col-md-12">
                <!-- /.form-group -->
                <div class="form-group">                  
                  <dx:BootstrapGridView ID="GridViewGuias" ClientInstanceName="clGridViewGuias" CssClasses-Control="table table-bordered table-striped" runat="server" KeyFieldName="GUIA">
                      <Columns>                                                                       
                        <dx:BootstrapGridViewHyperLinkColumn FieldName="FACTURA"   CssClasses-HeaderCell="table-striped"  HeaderBadge-CssClass=" alert-danger ">   
                            <DataItemTemplate>
                                    <a onclick="getDocEntry(<%# Eval("DocEntry") %>,<%# Eval("FACTURA") %>,'<%# Eval("CLIENTE") %>')" class="alert-link"><%# Eval("FACTURA") %></a>
                            </DataItemTemplate>                    
                        </dx:BootstrapGridViewHyperLinkColumn>  
                          <dx:BootstrapGridViewDataColumn FieldName="ZONA" />   
                        <dx:BootstrapGridViewDataColumn FieldName="DEPTO" />
                        <dx:BootstrapGridViewDataColumn FieldName="CIUDAD" />                                              
                          <dx:BootstrapGridViewDataColumn FieldName="CLIENTE" />                        
                          <%--<dx:BootstrapGridViewDataColumn FieldName="VENDEDOR" />                        --%>
                          <dx:BootstrapGridViewDataColumn FieldName="FECHA" />  
                        
                                                                                              
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
          <div class="card-footer">
            <small>Procurar cambiar zona solo a facturas pendientes</small><br>
              <a id="aaa" data-toggle="modal" data-target="#modal-default"></a>
          </div>
        </div>
        <!-- /.card -->
          </div>
        </section>
    <!--Fin-->

     <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">                
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>               
                  <input type="hidden" id="dcentry" value="999999">  
              </div>
              <div class="modal-body">
                  <p class="lead" id="tem">
                  <%-- Cambiar zona a la factura <br><input type="text" id="Text1" value="" readonly>  <br />                  
                       Ciudad Actual &hellip;<br /> <input type="text" id="Text2" value="999999">--%>
                      <small>CAMBIAR ZONA A FACTURA</small><BR>
                   <h4 class="modal-title">Factura <label class="control-label" id="factu2"> xxInput with error</label></h4>                     
                      
                   <h4>Cliente <label class="control-label" id="ciudad"> xxInput with error</label></h4>
                  </p>

                 

                  <div><input type="hidden" id="one" value="999999"></div>
                  <br>                  
                  <div class="btn btn-block btn-primary">Elegir Dep y Ciudad a Cambiar </div>
                  <br />
                  <div class="form-group">
                  <dx:ASPxComboBox runat="server" ID="CmbCountry" DropDownStyle="DropDownList" 
                                        ClientInstanceName="cmbDEP" IncrementalFilteringMode="StartsWith"
                                        TextField="Name" ValueField="Code" Width="100%" 
                                        EnableSynchronization="False" CssClass="form-control">
                        <ClientSideEvents SelectedIndexChanged="function(s, e) { OnCountryChanged(s); }" />
                        </dx:ASPxComboBox>
                   </div>
                  <hr />
                  <div class="form-group">
                      <dx:ASPxComboBox runat="server" ID="CmbCity"  ClientInstanceName="cmbCity" OnCallback="CmbCity_Callback" 
                                            DropDownStyle="DropDown" TextField="U_CityName" Width="100%"
                                            ValueField="U_CityCode" IncrementalFilteringMode="StartsWith"
                                            EnableSynchronization="False" CssClass="form-control">
                                            <ClientSideEvents EndCallback=" OnEndCallback" />
                      </dx:ASPxComboBox>
                  </div>
                  

                <button type="button" class="btn btn-block btn-success" onclick="updateChange()">Guardar Cambios</button>                                
              </div>
              <div class="modal-footer">               
                <button type="button" id="btncls" class="btn btn-block btn-warning pull-left" data-dismiss="modal">Cerrar</button>                
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->



    <%--por aqui vas cambiarlos por boostraptextboxt y combobox--%>
    <script type="text/javascript" >
        var guia1 = $('#input').val();//
        function getDocEntry(docEntry, dep, city) {
           // alert(docEntry);
           // alert(dep);
           // alert(city);
            $("#one").val(docEntry);
            $("#dcentry").val(docEntry);
            //$("#factu").val(dep);            
            $("#factu2").text(dep);
            $("#ciudad").text(city);//id pusistes ciudad pero es cliente xd
            //obteniendo docentry de factura q cambiara zona            
            $("#aaa").click();
        }


        function updateChange() {
            var DOCENTRI = $("#dcentry").val();           
            var DEPART = cmbDEP.GetValue();
            var CIUDAD = cmbCity.GetValue();
            
            $.ajax({
                type: 'POST',
                cache: 'false',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: 'CambZnxFact.aspx/GetData',
                data: JSON.stringify({ docentry: DOCENTRI, city: CIUDAD, dep: DEPART }),
                success: function (response) {
                    var result = JSON.parse(response.d);
                    //alert(result["1"]);

                    $("#btncls").click();
                    clGridViewGuias.Refresh(); //reload nada
                    
                    //window.location.reload();
                    /*alert(result["2"]);
                    alert(result["3"]);
                    alert(result["4"]);*/
                },
                error: function (response) {
                    alert("error2 " + response.d);
                }
            });/**/
        }


 </script>
        
   <script type="text/javascript">
       $(document).ready(function () {
           $('#example1').DataTable();
       });
	</script>
</asp:Content>

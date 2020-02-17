<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSinMenu.Master" AutoEventWireup="true" CodeBehind="xCarousel.aspx.cs" Inherits="DXWeb18.xCarousel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column ----------------------------------------------------------------------------------------------------------------------------------------->
          <div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Carousel 1</h3>
                  <img src="#" id="imagen1" class="img-rounded" runat="server" width="720" height="280"/>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
               <!-- form start -->
              <div class="form-horizontal">
                <div class="card-body">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Tema</label>
                    <div class="col-sm-10">
                      <input type="Text" class="form-control" id="tema1" name="tema1" placeholder="Tema" runat="server">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Descripcion</label>
                    <div class="col-sm-10">
                      <input type="Text" class="form-control" id="descripcion1" name="descripcion1" placeholder="Descricion" runat="server">
                    </div>
                  </div>
                    
                    <div class="form-group row">                    
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Imagen</label>  
                     <div class="col-sm-10">
                         
                      <label class="custom-file-label" for="customFile">Choose file</label>
                         <input type="file" class="col-sm-2 custom-file-input" id="file1" name="file1" runat="server">                      
                     </div>
                  </div>

                    <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Enlace</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="enlace1" name="enlace1" placeholder="Enlace" runat="server">
                    </div>
                  </div>
                    
                  <div class="form-group row">
                    <div class="offset-sm-2 col-sm-10">
                      <div class="form-check">
                        <input type="text" class="form-check-input" id="estado1" name="estado1" runat="server" readonly="true">
                        <label class="form-check-label" for="exampleCheck2">Activo</label>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-info" name="activar1">Activar</button>
                  <button type="submit" class="btn btn-default float-right" name="desactivar1">DesActivar</button>
                </div>
                <!-- /.card-footer -->
              </div>

            </div>
            <!-- /.card -->
			</div>
			<!-- /.ccol  ----------------------------------------------------------------------------------------------------------------------------------------->




               <!-- left column ----------------------------------------------------------------------------------------------------------------------------------------->
          <div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Carousel 2</h3>
                  <img src="#" id="imagen2" class="img-rounded" runat="server"  width="720" height="280"/>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
               <!-- form start -->
              <div class="form-horizontal">
                <div class="card-body">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Tema</label>
                    <div class="col-sm-10">
                      <input type="Text" class="form-control" id="tema2" name="tema2" placeholder="Tema" runat="server">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Descripcion</label>
                    <div class="col-sm-10">
                      <input type="Text" class="form-control" id="descripcion2" name="descripcion2" placeholder="Descricion" runat="server">
                    </div>
                  </div>
                    
                    <div class="form-group row">                    
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Imagen</label>  
                     <div class="col-sm-10">
                         
                      <label class="custom-file-label" for="customFile">Choose file</label>
                         <input type="file" class="col-sm-2 custom-file-input" id="file2" name="file2" runat="server">                      
                     </div>
                  </div>

                    <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Enlace</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="enlace2" name="enlace2" placeholder="Enlace" runat="server">
                    </div>
                  </div>
                    
                  <div class="form-group row">
                    <div class="offset-sm-2 col-sm-10">
                      <div class="form-check">
                        <input type="text" class="form-check-input" id="estado2" name="estado2" runat="server" readonly="true">
                        <label class="form-check-label" for="exampleCheck2">Activo</label>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-info" name="activar2">Activar</button>
                  <button type="submit" class="btn btn-default float-right" name="desactivar2">DesActivar</button>
                </div>
                <!-- /.card-footer -->
              </div>

            </div>
            <!-- /.card -->
			</div>
			<!-- /.ccol  ----------------------------------------------------------------------------------------------------------------------------------------->





               <!-- left column ----------------------------------------------------------------------------------------------------------------------------------------->
          <div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Carousel 3</h3>
                  <img src="#" id="imagen3" class="img-rounded" runat="server"  width="720" height="280"/>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
               <!-- form start -->
              <div class="form-horizontal">
                <div class="card-body">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Tema</label>
                    <div class="col-sm-10">
                      <input type="Text" class="form-control" id="tema3" name="tema3" placeholder="Tema" runat="server">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Descripcion</label>
                    <div class="col-sm-10">
                      <input type="Text" class="form-control" id="descripcion3" name="descripcion3" placeholder="Descricion" runat="server">
                    </div>
                  </div>
                    
                    <div class="form-group row">                    
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Imagen</label>  
                     <div class="col-sm-10">
                         
                      <label class="custom-file-label" for="customFile">Choose file</label>
                         <input type="file" class="col-sm-2 custom-file-input" id="file3" name="file3" runat="server">                      
                     </div>
                  </div>

                    <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Enlace</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="enlace3" name="enlace3" placeholder="Enlace" runat="server">
                    </div>
                  </div>
                    
                  <div class="form-group row">
                    <div class="offset-sm-2 col-sm-10">
                      <div class="form-check">
                        <input type="text" class="form-check-input" id="estado3" name="estado3" runat="server" readonly="true">
                        <label class="form-check-label" for="exampleCheck2">Activo</label>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-info" name="activar3">Activar</button>
                  <button type="submit" class="btn btn-default float-right" name="desactivar3">DesActivar</button>
                </div>
                <!-- /.card-footer -->
              </div>

            </div>
            <!-- /.card -->
			</div>
			<!-- /.ccol  ----------------------------------------------------------------------------------------------------------------------------------------->
		</div>
			<!-- /.row -->			
	</section>
    <input type="text" class="form-control" id="zerror" name="zerror" placeholder="" runat="server" visible="false">
			<!-- /.section --> 
   

</asp:Content>

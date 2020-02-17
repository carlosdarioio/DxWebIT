<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTest1.Master" AutoEventWireup="true" CodeBehind="Calendario.aspx.cs" Inherits="DXWeb18.Calendario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <!--inicio-->
   <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- CONTENT EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Calendario de eventos INFINITY</h3>

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
                    
                    
                             <dx:BootstrapScheduler ID="BootstrapScheduler1" runat="server"  AppointmentDataSourceID="SqlDataSource2" ClientIDMode="AutoID" ActiveViewType="Month"  > 
 
<Views>
            <DayView Enabled="true" />
            <WorkWeekView Enabled="true" />
            <WeekView Enabled="true" />
            <MonthView Enabled="true" />
            <TimelineView Enabled="true" />
            <AgendaView Enabled="true">
                
            </AgendaView>
    
        </Views>


               <Storage>
        <Appointments AutoRetrieveId="true">
            <Mappings AppointmentId = "ID" Start = "StartTime" End = "EndTime" Subject = "Subject"
                Description = "Description" Location = "Location" />
        </Appointments>
    </Storage>               
   
            </dx:BootstrapScheduler>
           
           
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
ConnectionString="<%$ ConnectionStrings:alolaConnectionString %>"
SelectCommand="SELECT [ID], [StartTime], [EndTime], [Subject], [Description], [Location] FROM [CfCalEventSch]"
DeleteCommand="Delete from CfCalEventSch where id=@ID"
InsertCommand="INSERT INTO [dbo].[CfCalEventSch]([StartTime],[EndTime],[Subject],[Description],[Location]) VALUES (@StartTime,@EndTime,@Subject,@Description,@Location) "
UpdateCommand="UPDATE [dbo].[CfCalEventSch]  SET [StartTime] = @StartTime,[EndTime] = @EndTime,[Subject] = @Subject,[Description] = @Description,[Location] = @Location WHERE [ID]=@ID"
></asp:SqlDataSource>  

                    
                            
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
            Pagina para administrar eventos proximos de la empresa.
          </div>
        </div>
        <!-- /.card -->

          </div>

        </section>
    <!--Fin-->
</asp:Content>

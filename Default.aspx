<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="DxWebIT._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="jumbotron">
      <div class="container">
        <h1>xWebIT</h1>
        <p>Pagina dirigida a operaciones basicas que pueden efectuar por medio del navegador</p>        
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>DxWebIT</h2>
          <p>Oporaciones generales por departamento </p>
          <p> <a href="1PaginaConCuerpoVacio.aspx">Inicio</a> </p>
            
        </div>
        <div class="col-md-4">
          <h2>Soporte</h2>
          <p>Efecuta tus solicitudes por departamenot por medio de esta Pagina de solicitudes. </p>
          <p><a href="http://10.1.201.3:8080/Soporte/">Soporte</a></p>
       </div>
        <div class="col-md-4">
          <h2>Learning</h2>
          <p>Quieres comprender el paso a paso de cada labor, visita la Pagina de procedimientos </p>
          <p><a href="http://10.1.201.3:8080/Learning/">Learning</a></p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <h2>Infinity</h2>
          <p>Pagina de principal de infinity </p>
          <p><a href="http://10.1.201.3/INFINITY/">INFINITY</a></p>
        </div>
        <div class="col-md-4">
          <h2>Blog Infinity</h2>
            <p>Blog  de comunicados internos de parte de INFINITY</p>
          <p><a href="http://10.1.201.3:8080/BLOG_INFINITY/">Blog Infinity</a></p>
       </div>
        
      </div>
     </div>
</asp:Content>
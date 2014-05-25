<%@ Page Title="" Language="C#" MasterPageFile="CTS-App.Master" AutoEventWireup="true" CodeBehind="Resultat.aspx.cs" Inherits="CTS_App.Views.Resultat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br/>
    <br/>
    <br/>
       
    <div class="jumbotron label-info">
        
        <div id="jumb-res" class="container"> <h2>Résultats:</h2></div>
            </div>
    <div id="cont-res" class="container">
        <div class="col-md-4"></div>
        <div class="col-md-8">
            <ul class="nav nav-tabs" id="myTab">
                  <li class="active"><a href="#carte" data-toggle="tab">Carte</a></li>
                  <li><a href="#graphe" data-toggle="tab">Graphe</a></li>
                  <li><a href="#stat" data-toggle="tab">Statistiques</a></li>
<%--                  <li><a href="#se" data-toggle="tab">Settings</a></li>--%>
            </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                  <div class="tab-pane active" id="carte">first</div>
                  <div class="tab-pane" id="graphe">medium-first</div>
                  <div class="tab-pane" id="stat">medium</div>
<%--                  <div class="tab-pane" id="settings">last</div>--%>
               </div>
        </div>
    </div>
    
    
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="CTS-App.Master" AutoEventWireup="true" CodeBehind="Resultat.aspx.cs" Inherits="CTS_App.Views.Resultat" EnableEventValidation="false"%>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/css/all.css" rel="stylesheet" />
    
    <script src="../Scripts/d3.js"></script>
    <script src="../Scripts/angular-charts.js"></script>    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br/>
    <br/>
    <br/>
       
    <div class="jumbotron label-info">
        
        <div id="jumb-res" class="container"> <h2>Résultats:</h2></div>
            </div>
    
    <div id="cont-res" class="container" data-ng-app="ResultatsApp" data-ng-controller="ResultatController"  >
        <div class="col-md-4">
            <div class="col-md-2">Ligne:<br/>Vehicule:<br/><br/><br/> Période:<br/> de: <br/>à:</div>
            <div class="col-md-2"><asp:DropDownList runat="server" ID="DropdownListLigne" ng-model="ligne" OnSelectedIndexChanged="DropdownListLigne_SelectedIndexChanged" /><br/>
                <asp:DropDownList runat="server" ID="DropdownListVehicule" ng-model="vehicule"></asp:DropDownList><br/><br/><br/><i class="fa fa-calendar"></i>
                <br/><asp:TextBox runat="server" ID="TextBoxDateDebut" ng-model="dateDebut" ></asp:TextBox>
                <br/><asp:TextBox runat="server" ID="TextBoxDateFin" ng-model="dateFin"></asp:TextBox>
                <br/><br/><asp:Button runat="server" CssClass="btn btn-primary" Text="Valider" OnClientClick="return false;" data-ng-click="sendRecieve()"/>
            </div>
                              <asp:CalendarExtender ID="CalendarExtenderFin" runat="server" TargetControlID="TextBoxDateFin" Format="dd/MM/yyyy"></asp:CalendarExtender>
                              <asp:CalendarExtender ID="CalendarExtenderDebut" runat="server" TargetControlID="TextBoxDateDebut" Format="dd/MM/yyyy"></asp:CalendarExtender>
        </div>
        <div class="col-md-8" data-ng-show="showVariable" >
            <ul class="nav nav-tabs" id="myTab">
                  <li class="active"><a href="#graphe" data-toggle="tab">Graphe</a></li>
<%--                  <li><a href="#graphe" data-toggle="tab">Graphe</a></li>--%>
                  <li><a href="#Gmap" data-toggle="tab">Cartographie</a></li>
            </ul>
                <div class="tab-content">

                  <div class="tab-pane active" id="graphe">
                                            <div data-ng-show="showGraphLine" ac-chart="chartType"  ac-data="data" ac-config="config" id="chart" class="chart" ></div>
                                                                  <div data-ng-show="showGraphCircle" ac-chart="chartType2" ac-data="data" ac-config="config2" id="chart2" class="chart" ></div>                      
                         <div id="buttongraph" class="btn-group"><button  class="btn btn-primary" onclick="return false;" ng-click="displayLine()">Graphe idéal</button><button onclick="return false;" class="btn btn-primary" ng-click="displayCircle()">Statistiques</button></div>
                                            </div>
                  <div class="tab-pane" id="Gmap"  >
                     <a href="/Views/MapPage.aspx"> <img src="../Content/font/flat-map.png" alt="..." class="img-circle"></a>

                  </div>
                    
               </div>
            </div>

        </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/CTS-App.Master" AutoEventWireup="true" CodeBehind="MapDetails.aspx.cs" Inherits="CTS_App.Views.MapDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
  map, div[map] {display:block; width:600px; height:400px;}
</style>
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <br/>
    <div class="jumbotron" data-ng-app="myApp" >
        <script>
            var myApp = angular.module('myApp', ['ngMap']);
            
        </script>
         <section id="map" >
<map style="display:block;height:300px" /></section>
    </div>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&callback=onGoogleReady"></script>
    <script>
        function onGoogleReady() {
            alert("ready");
//            angular.bootstrap(document.getElementById("map"), ['MyApp']);
        }
    </script>
</asp:Content>

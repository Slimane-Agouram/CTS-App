<%@ Page Title="" Language="C#" MasterPageFile="CTS-App.Master" AutoEventWireup="true" CodeBehind="AnomalieConnexion.aspx.cs" Inherits="CTS_App.Views.AnomalieConnexion" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            width: 301px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="Anomalies" style="padding-top: 30px; margin-top: 30px;">
                <div class="jumbotron label-info">
        <div id="titre" class="container"> <h2>Anomalie de connexion:</h2></div>
            </div>
    <table class="table table-striped">
        <tr>
            <td class="auto-style2"><i class="fa fa-truck"></i> Vehicule&nbsp;</td>
            <td class="auto-style1"><asp:DropDownList runat="server" CssClass="input-sm" ID="DropDownListVehicule"/></td>
        </tr>
        <tr>
            <td class="auto-style2"><i class="fa fa-tachometer"></i> Anomalie&nbsp;</td>
            <td class="auto-style1"><asp:DropDownList runat="server" CssClass="input-sm" ID="DropDownListAnomalies"/></td>
        </tr>
        <tr>
            <td class="auto-style2"><i class="fa fa-calendar-o"></i> Date&nbsp;</td>
            <td class="auto-style1"><asp:TextBox runat="server" ID="TextboxDateDebut">De:</asp:TextBox><asp:TextBox runat="server" ID="TextboxDateFin">à:</asp:TextBox>
                                  <asp:CalendarExtender ID="CalendarExtenderDebut" runat="server" TargetControlID="TextboxDateDebut" Format="dd/MM/yyyy"></asp:CalendarExtender>
                                                  <asp:CalendarExtender ID="CalendarExtenderFin" runat="server" TargetControlID="TextboxDateFin" Format="dd/MM/yyyy"></asp:CalendarExtender>

            </td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Button runat="server" ID="ButtonValider" CssClass="btn btn-primary" Text="Valider" OnClick="ButtonValider_Click"/></td>
            <td class="auto-style1"><asp:Button runat="server" ID="ButtonExporter" Text="Exprorter" CssClass="btn btn-danger" Visible="false" OnClick="ButtonExporter_Click"/></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            
            <td class="auto-style1"><asp:GridView runat="server" ID="GridViewAnomalies" CssClass="table-hover table-responsive"></asp:GridView></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
    </div>

</asp:Content>

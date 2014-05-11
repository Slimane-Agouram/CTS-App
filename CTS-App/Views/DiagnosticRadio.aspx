<%@ Page Title="" Language="C#" MasterPageFile="CTS-App.Master" AutoEventWireup="true" CodeBehind="DiagnosticRadio.aspx.cs" Inherits="CTS_App.Views.DiagnosticRadio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
      <script src="../Scripts/angular.min.js" type="text/javascript"></script>
    <script src="../Scripts/CTS_AppControllers.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div id="diagnostic" style=" padding-top: 30px; margin-top: 30px;" data-ng-app="DiagnosticApp" data-ng-controller="DiagnosticController">
        
        <table class="nav-justified">
            <tr>
                <td>Ligne:</td>
                <td>
                    <asp:DropDownList ID="DropDownListLigne" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Qualité Radio:</td>
                <td>
                    <asp:DropDownList ID="DropDownListQuality" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Vehicule:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxVehicule" runat="server" ng-model="reference" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><div id="listeVehicule" data-ng-repeat="vehicule in vehicules|filter:reference">Vehicule:{{vehicule.ref}}</div></td>
            </tr>
        </table>
        
    </div>

</asp:Content>

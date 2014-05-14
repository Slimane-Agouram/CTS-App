<%@ Page Title="" Language="C#" MasterPageFile="CTS-App.Master" AutoEventWireup="true" CodeBehind="Ajout.aspx.cs" Inherits="CTS_App.Views.Ajout" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script src="../Scripts/angular.min.js" type="text/javascript"></script>
    <script src="../Scripts/CTS_AppControllers.js" type="text/javascript"></script>

    <style type="text/css">
        #te {
            height: 24px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br/>
    <br/>
    <br/> 
    
    <div id="test" data-ng-app="AjoutApp" class="container">
<%--        <input type="text" data-ng-model="nom"/>--%>
<%--    <div data-ng-controller="AjoutFichierController" class="container" >--%>
<%--        <div id="te" data-ng-repeat ="fi in fichiers|filter:nom" class=""> fichier: {{fi.id}} - Nom: {{fi.nom}}<br />--%>
<%--            <br />--%>
<%--                </div>--%>
<%--                </div>--%>

            <table class="nav-justified">
                <tr>
                    <td>Type de fichier:</td>
                    <td>
                        <asp:DropDownList ID="DropDownListTypeFichier" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Parcourir le fichier:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:AjaxFileUpload ID="FileUploadToTreat" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="ValiderButton" runat="server" Text="Valider" CssClass="btn btn-success" OnClick="ValiderButton_Click" />
                    </td>
                </tr>
            </table>
            <br />
        

        </div>
</asp:Content>

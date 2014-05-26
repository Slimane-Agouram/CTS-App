<%@ Page Title="" Language="C#" MasterPageFile="CTS-App.Master" AutoEventWireup="true" CodeBehind="Ajout.aspx.cs" Inherits="CTS_App.Views.Ajout" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
    
    <div id="test"  class="container">

        
                <div class="jumbotron label-info">
        <div id="titre" class="container"> <h2>Ajouter un fichier:</h2></div>
            </div>
            <table class="nav-justified">
                <tr>
                    <td><i class="fa fa-file"></i> Type de fichier:</td>
                    <td>
                        <asp:DropDownList ID="DropDownListTypeFichier" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><i class="fa fa-upload"></i> Parcourir le fichier:</td>
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

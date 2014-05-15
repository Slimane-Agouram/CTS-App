<%@ Page Title="" Language="C#" MasterPageFile="CTS-App.Master" AutoEventWireup="true" CodeBehind="DiagnosticRadio.aspx.cs" Inherits="CTS_App.Views.DiagnosticRadio" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
        
        <table class="table table-striped" >
            <tr>
                <td><i class="fa fa-truck"></i> Ligne:</td>
                <td>
                    <asp:DropDownList ID="DropDownListLigne" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><i class="fa fa-tachometer"></i> Qualité Radio:</td>
                <td>
                    <asp:DropDownList ID="DropDownListQuality" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                   <i class="fa fa-calendar-o"></i> Date début - fin
                </td>
              <td>
                        
                                <asp:TextBox ID="TextBoxDateDebut" CssClass="col-sm-2 control-label" runat="server"   >De:</asp:TextBox> <asp:TextBox ID="TextBoxDateFin" CssClass="col-sm-2 control-label" runat="server"   >à:</asp:TextBox>
                                 
                </td>
                              <asp:CalendarExtender ID="CalendarExtenderFin" runat="server" TargetControlID="TextBoxDateFin" Format="dd/MM/yyyy"></asp:CalendarExtender>

                  <asp:CalendarExtender ID="CalendarExtenderDebut" runat="server" TargetControlID="TextBoxDateDebut" Format="dd/MM/yyyy"></asp:CalendarExtender>
            </tr>
            <tr>
                <td class="auto-style1"><i class="fa fa-search"></i> Vehicule:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxVehicule" CssClass="col-sm-2 control-label" runat="server" ng-model="reference" OnTextChanged="TextBoxVehicule_TextChanged" EnableViewState="False" ></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Valider" CssClass="btn btn-primary" />
                </td>
                <td>
<%--                    <div id="listeVehicule" data-ng-repeat="vehicule in vehicules|filter:reference">--%>
<%--                        --%>
<%--                    --%>
<%--                    <a href="#"> Vehicule:{{vehicule.ref}}</a>--%>
<%--                    --%>
<%--                   --%>
<%--                    </div>--%>


                    <asp:GridView ID="GridViewVehicules" runat="server" CssClass="table-striped table-responsive table-hover">
                    </asp:GridView>


                </td>
            </tr>
        </table>
        
    </div>

</asp:Content>

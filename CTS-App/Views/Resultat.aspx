<%@ Page Title="" Language="C#" MasterPageFile="CTS-App.Master" AutoEventWireup="true" CodeBehind="Resultat.aspx.cs" Inherits="CTS_App.Views.Resultat" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
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
        <div class="col-md-4">
            <div class="col-md-2">Ligne:<br/><br/><br/> Période:<br/> de: <br/>à:</div>
            <div class="col-md-2"><asp:DropDownList runat="server"/><br/><br/><br/><i class="fa fa-calendar"></i><br/><asp:TextBox runat="server" ID="TextBoxDateDebut"></asp:TextBox><br/><asp:TextBox runat="server" ID="TextBoxDateFin"></asp:TextBox><br/><br/><asp:Button runat="server" CssClass="btn btn-primary" Text="Valider" OnClientClick="return false;" /></div>
                              <asp:CalendarExtender ID="CalendarExtenderFin" runat="server" TargetControlID="TextBoxDateFin" Format="dd/MM/yyyy"></asp:CalendarExtender>
                              <asp:CalendarExtender ID="CalendarExtenderDebut" runat="server" TargetControlID="TextBoxDateDebut" Format="dd/MM/yyyy"></asp:CalendarExtender>
        </div>
        <div class="col-md-8">
            <ul class="nav nav-tabs" id="myTab">
                  <li class="active"><a href="#carte" data-toggle="tab">Carte</a></li>
                  <li><a href="#graphe" data-toggle="tab">Graphe</a></li>
                  <li><a href="#stat" data-toggle="tab">Statistiques</a></li>
            </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                  <div class="tab-pane active" id="carte">
<%--                        <div class="loader">Loading...</div>--%>
</div>
                  <div class="tab-pane" id="graphe">
                      <canvas id="myChart" width="800" height="400"></canvas>
          <script>
              var data = {
                  labels: ["January", "February", "March", "April", "May", "June", "July"],
                  datasets: [
                      {
                          fillColor: "rgba(220,220,220,0.5)",
                          strokeColor: "rgba(220,220,220,1)",
                          pointColor: "rgba(220,220,220,1)",
                          pointStrokeColor: "#fff",
                          data: [65, 59, 90, 81, 56, 55, 40]
                      },
                      {
                          fillColor: "rgba(151,187,205,0.5)",
                          strokeColor: "rgba(151,187,205,1)",
                          pointColor: "rgba(151,187,205,1)",
                          pointStrokeColor: "#fff",
                          data: [28, 48, 40, 19, 96, 27, 100]
                      }
                  ]
              };

              var ctx = $("#myChart").get(0).getContext("2d");
              //This will get the first returned node in the jQuery collection.
              var myNewChart = new Chart(ctx).Line(data);
            </script>
                  </div>
                  <div class="tab-pane" id="stat">medium</div>
               </div>

        </div>
        <div class="col-md-12">
              
            
        </div>
<%--        <div class="col-md-12">--%>
<%--<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="return false;">--%>
<%--  Launch demo modal--%>
<%--</button>        --%>
<%--     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--  <div class="modal-dialog">--%>
<%--    <div class="modal-content">--%>
<%--      <div class="modal-header">--%>
<%--        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--        <h4 class="modal-title" id="myModalLabel">Modal title</h4>--%>
<%--      </div>--%>
<%--      <div class="modal-body">--%>
<%--        here;<br/>--%>
<%--      </div>--%>
<%--      <div class="modal-footer">--%>
<%--        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--        <button type="button" class="btn btn-primary">Save changes</button>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--    </div>--%>
    </div>
    
</asp:Content>

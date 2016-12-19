<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="tpf.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Contactos</h3>
    <br />
    <br />
    <div>
        <div class="col-md-4 text-left" style="bottom:10px">
                    <address>
                Cais da Fonte Nova<br />
                Aveiro, 3810-205<br />
            </address>       
            <address>
                <strong>Apoio:</strong>   <a href="mailto:Support@example.com">Apoio@leRestauranti.com</a><br />
                <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@leRestauranti.com</a>
            </address>
                </div>
  
        <div class="col-md-4 text-right">
            <iframe width="600" height="450" style="border:inherit" src="https://www.google.com/maps/embed/v1/place?q=40.6397172%2C-8.6450967&key=AIzaSyCLO1ZJjx4qnMX2MMRekG5yonsXs3Muu8Q"></iframe>
        </div>
          </div>
</asp:Content>

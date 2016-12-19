<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="tpf.reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Reservas<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="reserva" DataValueField="reserva">
        </asp:DropDownList>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/reservation.xml" TransformFile="~/App_Data/reservation.xsl"></asp:XmlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" Height="84px" Width="715px">
            <Columns>
                <asp:BoundField DataField="reserva" HeaderText="reserva" SortExpression="reserva" />
                <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

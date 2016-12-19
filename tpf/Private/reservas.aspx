<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="tpf.Private.reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h4>Nome:</h4>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     <asp:CompareValidator ID="txttaxtValid" runat="server" ControlToValidate="TextBox1" ErrorMessage="Not Valid" ForeColor="Red" Type="String" Operator="DataTypeCheck"/>
     <asp:RequiredFieldValidator ID="txttaxReq" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red" />
    <br />
    <h4>Número de telefone:</h4>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
     <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Not Valid" ForeColor="Red" Type="Integer" Operator="DataTypeCheck"/>
     <asp:RequiredFieldValidator ID="txttaxReq2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red" />
    <br />
    <h4>Número de pessoas:</h4>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
     <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Not Valid" ForeColor="Red" Type="Integer" Operator="DataTypeCheck"/>
    <asp:RequiredFieldValidator ID="txttaxReq4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="Red" />
    <br />
    <br />
    <h4>Data:</h4>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="186px" NextPrevFormat="FullMonth" Width="324px" onselectionchanged="Calendar1_SelectionChanged">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="White" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <br />
    <asp:TextBox ID="date" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submeter Reserva" OnClick="Button1_Click" />
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/reservation.xml" EnableCaching="False" TransformFile="~/App_Data/reservation.xsl"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/reservation.xml" EnableCaching="False"></asp:XmlDataSource>
</asp:Content>

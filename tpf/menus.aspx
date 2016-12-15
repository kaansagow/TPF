<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menus.aspx.cs" Inherits="tpf.menus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>Ementa</h2>
    <br />

    <asp:DropDownList runat="server" AppendDataBoundItems="true" AutoPostBack="true" ID="Pratos" DataSourceID="XmlDataSource1" DataTextField="menu" DataValueField="menu" ></asp:DropDownList>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/menus.xml" TransformFile="~/App_Data/menus.xsl" XPath="//menu"></asp:XmlDataSource>
</asp:Content>

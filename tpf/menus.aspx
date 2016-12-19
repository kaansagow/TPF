<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menus.aspx.cs" Inherits="tpf.menus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>Ementa</h2>
    <hr />

    <div class="row">
        <div class="col-md-4 text-left">
            Choose: <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="true" AutoPostBack="true" runat="server" DataSourceID="XmlDataSource1" DataTextField="menu" DataValueField="menu" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList> 
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/menu.xml" TransformFile="~/App_Data/menu.xsl" XPath="menus/item[not(@menu=preceding::item/@menu)]"></asp:XmlDataSource>
        </div>
    </div>
    <hr />
        <asp:GridView ID="GridView1" Visible="false" CssClass="table table-striped table-hover" GridLines="None" ShowHeader="False" runat="server" DataSourceID="XmlDataSource2" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="nome" SortExpression="nome">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nome") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("nome") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="price" SortExpression="price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title">Atenção!!</h3>
                    </div>
                    <div class="panel-body">
                        Não há propriedades com essa seleção!
                    </div>
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" EnableCaching="false" DataFile="~/App_Data/menu.xml" TransformFile="~/App_Data/menu.xsl"></asp:XmlDataSource>
</asp:Content>

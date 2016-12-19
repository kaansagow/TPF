<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gestao.aspx.cs" Inherits="tpf.Admin.Gestao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
    <h2>Ementa</h2>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" GridLines="None" DataSourceID="XmlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
         <Columns>
             <asp:TemplateField HeaderText="id" SortExpression="id" Visible="false">
                 <ItemTemplate>
                     <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("id") %>'></asp:HyperLink>
                 </ItemTemplate>
                 <FooterTemplate>

                 </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="menu" SortExpression="menu">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("menu") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("menu") %>'></asp:Label>
                 </ItemTemplate>
                 <FooterTemplate>
                     <asp:TextBox ID="txtmenu" runat="server"></asp:TextBox>
                 </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="nome" SortExpression="nome">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nome") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("nome") %>'></asp:Label>
                 </ItemTemplate>
                 <FooterTemplate>
                     <asp:TextBox ID="txtnome" runat="server"></asp:TextBox>
                 </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="price" SortExpression="price">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                 </ItemTemplate>
                 <FooterTemplate>
                     <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                 </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField ShowHeader="False">
                 <EditItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                 </ItemTemplate>
                 <FooterTemplate>
                     <asp:LinkButton ID="lnkSave" runat="server" CommandName="Save" OnClick="lnkSave_Click">Save</asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CommandName="Cancel" OnClick="LinkButton3_Click"></asp:LinkButton>
                 </FooterTemplate>
             </asp:TemplateField>
             <asp:TemplateField ShowHeader="False">
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
         <EmptyDataTemplate>
             <div class="panel panel-warning">
                 <div class="panel-heading">
                     <h3 class="panel-title">Atenção!!</h3>
                 </div>
                 <div class="panel-body">
                     Não há items com essa seleção!
                 </div>
             </div>
         </EmptyDataTemplate>
    </asp:GridView>
    <asp:Button ID="button1" runat="server" CssClass="btn btn-default" OnClick="button1_Click" Text="Add new item" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/menu.xml" EnableCaching="false" TransformFile="~/App_Data/menu.xsl" XPath="/menus/item"></asp:XmlDataSource>    
    <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/App_Data/menu.xml" EnableCaching="false"></asp:XmlDataSource>
</asp:Content>

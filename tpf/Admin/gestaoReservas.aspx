<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gestaoReservas.aspx.cs" Inherits="tpf.Admin.gestaoReservas" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:GridView ID="GridView1" OnRowDeleting="reservationItemDeleting" OnRowUpdating="reservationItemUpdating" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="False" GridLines="None" DataSourceID="XmlDataSource1">
        <Columns>

            <asp:TemplateField HeaderText="id" SortExpression="id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Bind("id") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="reserva" SortExpression="reserva">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("reserva") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("reserva") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="telefone" SortExpression="telefone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("telefone") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("telefone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="email" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="data" SortExpression="data">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("data") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("data") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pessoas" SortExpression="pessoas">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("pessoas") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("pessoas") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="True" CommandName="Update" class="fa fa-floppy-o" aria-hidden="true"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"  class="fa fa-times" aria-hidden="true"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" class="fa fa-pencil-square-o" aria-hidden="true"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/reservation.xml" EnableCaching="False" TransformFile="~/App_Data/reservation.xsl"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/reservation.xml" EnableCaching="False"></asp:XmlDataSource>
</asp:Content>


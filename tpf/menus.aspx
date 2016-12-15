<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menus.aspx.cs" Inherits="tpf.menus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>Ementa</h2>
    <asp:DropDownList ID="dropbox" runat="server">
        <asp:ListItem Text="Entradas" Value="0"></asp:ListItem>
        <asp:ListItem Text="Sopas" Value="1"></asp:ListItem>
        <asp:ListItem Text="Pratos Carne" Value="2"></asp:ListItem>
        <asp:ListItem Text="Pratos Peixe" Value="3"></asp:ListItem>
        <asp:ListItem Text="Pratos Vegetarianos" Value="4"></asp:ListItem>
        <asp:ListItem Text="Sobremesas" Value="5"></asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="theDoc" HeaderText="theDoc" ReadOnly="True" SortExpression="theDoc" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [carnes] WHERE [id] = @id" InsertCommand="INSERT INTO [carnes] ([theDoc], [price]) VALUES (@theDoc, @price)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [id], [theDoc], [price] FROM [carnes]" UpdateCommand="UPDATE [carnes] SET [theDoc] = @theDoc, [price] = @price WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="theDoc" HeaderText="theDoc" ReadOnly="True" SortExpression="theDoc" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView3" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="theDoc" HeaderText="theDoc" ReadOnly="True" SortExpression="theDoc" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [peixes] WHERE [id] = @id" InsertCommand="INSERT INTO [peixes] ([theDoc], [price]) VALUES (@theDoc, @price)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [id], [theDoc], [price] FROM [peixes]" UpdateCommand="UPDATE [peixes] SET [theDoc] = @theDoc, [price] = @price WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [entradas] WHERE [id] = @id" InsertCommand="INSERT INTO [entradas] ([theDoc], [price]) VALUES (@theDoc, @price)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [id], [theDoc], [price] FROM [entradas]" UpdateCommand="UPDATE [entradas] SET [theDoc] = @theDoc, [price] = @price WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView4" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="theDoc" HeaderText="theDoc" ReadOnly="True" SortExpression="theDoc" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView5" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource5" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="theDoc" HeaderText="theDoc" ReadOnly="True" SortExpression="theDoc" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [sopas] WHERE [id] = @id" InsertCommand="INSERT INTO [sopas] ([theDoc], [price]) VALUES (@theDoc, @price)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [id], [theDoc], [price] FROM [sopas]" UpdateCommand="UPDATE [sopas] SET [theDoc] = @theDoc, [price] = @price WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [sobremesas] WHERE [id] = @id" InsertCommand="INSERT INTO [sobremesas] ([theDoc], [price]) VALUES (@theDoc, @price)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [id], [theDoc], [price] FROM [sobremesas]" UpdateCommand="UPDATE [sobremesas] SET [theDoc] = @theDoc, [price] = @price WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView6" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource6" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="theDoc" HeaderText="theDoc" ReadOnly="True" SortExpression="theDoc" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [veges] WHERE [id] = @id" InsertCommand="INSERT INTO [veges] ([theDoc], [price]) VALUES (@theDoc, @price)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [id], [theDoc], [price] FROM [veges]" UpdateCommand="UPDATE [veges] SET [theDoc] = @theDoc, [price] = @price WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="theDoc" Type="Object" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>

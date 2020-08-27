<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxButton ID="ExportButton" runat="server" Text="Export" OnClick="ExportButton_Click"></dx:ASPxButton>
            <dx:ASPxGridViewExporter ID="GridViewExporter1" runat="server" GridViewID="Grid1" Landscape="true"></dx:ASPxGridViewExporter>
            <dx:ASPxGridView ID="Grid1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="SupplierID">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="SupplierID" ReadOnly="true" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ContactTitle" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Region" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PostalCode" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Phone" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Fax" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="HomePage" VisibleIndex="11">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NWDConnectionString %>" ProviderName="<%$ ConnectionStrings:NWDConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>
            <dx:ASPxGridViewExporter ID="GridViewExporter2" runat="server" GridViewID="Grid2" Landscape="true"></dx:ASPxGridViewExporter>
            <dx:ASPxGridView ID="Grid2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="ProductID">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="true" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
                    </dx:GridViewDataCheckColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NWDConnectionString %>" ProviderName="<%$ ConnectionStrings:NWDConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            <dx:ASPxGridViewExporter ID="GridViewExporter3" runat="server" GridViewID="Grid3" Landscape="true"></dx:ASPxGridViewExporter>
            <dx:ASPxGridView ID="Grid3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" KeyFieldName="EmployeeID">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="EmployeeID" ReadOnly="true" VisibleIndex="0">
                        <EditFormSettings Visible="True" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="2" ExportWidth="1000">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Title" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TitleOfCourtesy" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="BirthDate" VisibleIndex="5">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="HireDate" VisibleIndex="6">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Region" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PostalCode" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="11">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="HomePhone" VisibleIndex="12">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ReportsTo" VisibleIndex="13">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NWDConnectionString %>" ProviderName="<%$ ConnectionStrings:NWDConnectionString.ProviderName %>" SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [ReportsTo] FROM [Employees]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

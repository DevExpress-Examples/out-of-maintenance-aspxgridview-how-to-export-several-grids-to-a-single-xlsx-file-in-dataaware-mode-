<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxButton ID="ExportButton" runat="server" Text="ASPxButton" OnClick="ExportButton_Click">
            </dx:ASPxButton>
            <dx:ASPxGridView ID="Grid1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
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
            <dx:ASPxGridView ID="Grid2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
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
                    <dx:GridViewDataTextColumn FieldName="Discontinued" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <dx:ASPxGridView ID="Grid3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="EmployeeID" ReadOnly="true" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="2">
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
            <dx:ASPxGridViewExporter ID="GridViewExporter1" GridViewID="Grid1" Landscape="true" runat="server">
            </dx:ASPxGridViewExporter>
            <dx:ASPxGridViewExporter ID="GridViewExporter2" GridViewID="Grid2" Landscape="true" runat="server">
            </dx:ASPxGridViewExporter>
            <dx:ASPxGridViewExporter ID="GridViewExporter3" GridViewID="Grid3" Landscape="true" runat="server">
            </dx:ASPxGridViewExporter>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [ReportsTo] FROM [Employees]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

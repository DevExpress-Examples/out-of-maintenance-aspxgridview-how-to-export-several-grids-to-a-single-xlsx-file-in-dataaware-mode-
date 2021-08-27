<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128534146/16.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T574839)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to export several grids to a single XLSX file in DataAware mode
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t574839/)**
<!-- run online end -->

> ### **NOTE:** This approach requires using the **DevExpress.Docs** assembly from the [Office File API library](https://docs.devexpress.com/OfficeFileAPI/14911/office-file-api). 

The <a href="https://docs.devexpress.com/CoreLibraries/DevExpress.XtraPrinting.PrintingSystemBase">PrintingSystemBase</a> class doesn't support the <strong>DataAware</strong> export mode. If a composite link uses <a href="https://docs.devexpress.com/CoreLibraries/DevExpress.XtraPrinting.PrintingSystemBase">PrintingSystemBase</a> for export, it doesn't support the <strong>DataAware</strong> mode either.<br>This example demonstrates how to implement the <strong>DataAware</strong> export using a workbook with several sheets.<br><br>Use the following steps:<br>1) Add a reference to the <em>DevExpress.Docs</em> assembly to your WebSite/WebApplication.<br>2) Create <strong>MemoryStream</strong> for every <strong>ASPxGridViewExporter</strong> control and export streams to the .xlsx format.<br>3) Define <a href="https://docs.devexpress.com/OfficeFileAPI/DevExpress.Spreadsheet.Workbook">Workbook</a> for each exporter and load the streams to workbooks.<br>4) Add the required number of <a href="https://docs.devexpress.com/OfficeFileAPI/DevExpress.Spreadsheet.Worksheet">Worksheets</a> to the main workbook and fill them from other workbooks' sheets.<br>5) Save the main workbook to a new stream and write it to the <strong>Response</strong>.<strong><br><br>See also:<br><a href="https://supportcenter.devexpress.com/ticket/details/e1535/how-to-combine-a-number-of-aspxgridview-documents-in-one-when-exporting">How to combine a number of ASPxGridView documents in one when exporting</a><br><a href="https://supportcenter.devexpress.com/ticket/details/e3626/how-to-export-several-controls-to-different-xlsx-worksheets">How to export several controls to different XLSX worksheets</a><br><a href="https://supportcenter.devexpress.com/ticket/details/e2226/how-to-export-the-aspxgridview-and-webchartcontrol-to-the-same-print-document">How to export the ASPxGridView and WebChartControl to the same print document</a><br></strong>

<br/>



<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx](./VB/Default.aspx))
<!-- default file list end -->
# ASPxGridView - How to export several grids to a single XLSX file in DataAware mode


The <a href="https://documentation.devexpress.com/#CoreLibraries/clsDevExpressXtraPrintingPrintingSystemBasetopic">PrintingSystemBase</a> class doesn't support the <strong>DataAware</strong> export mode. If a composite link uses <a href="https://documentation.devexpress.com/#CoreLibraries/clsDevExpressXtraPrintingPrintingSystemBasetopic">PrintingSystemBase</a> for export, it doesn't support the <strong>DataAware</strong> mode either.<br>This example demonstrates how to implement the <strong>DataAware</strong> export using a workbook with several sheets.<br><br>Use the following steps:<br>1) Add a reference to the <em>DevExpress.Docs</em> assembly to your WebSite/WebApplication.<br>2) Create <strong>MemoryStream</strong> for every <strong>ASPxGridViewExporter</strong> control and export streams to the .xlsx format.<br>3) Define <a href="https://documentation.devexpress.com/#DocumentServer/clsDevExpressSpreadsheetWorkbooktopic">Workbook</a> for each exporter and load the streams to workbooks.<br>4) Add the required number of <a href="https://documentation.devexpress.com/#CoreLibraries/clsDevExpressSpreadsheetWorksheettopic">Worksheets</a> to the main workbook and fill them from other workbooks' sheets.<br>5) Save the main workbook to a new stream and write it to the <strong>Response</strong>.<strong><br><br>See also:<br><a href="https://www.devexpress.com/Support/Center/p/E1535">How to combine a number of ASPxGridView documents in one when exporting</a><br><a href="https://www.devexpress.com/Support/Center/p/E3626">How to export several controls to different XLSX worksheets</a><br><a href="https://www.devexpress.com/Support/Center/p/E2226">How to export the ASPxGridView and WebChartControl to the same print document</a><br></strong>

<br/>



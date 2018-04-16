using System;
using System.IO;
using DevExpress.XtraPrinting;
using DevExpress.Export;
using DevExpress.Spreadsheet;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ExportButton_Click(object sender, EventArgs e)
    {
        var stream1 = new MemoryStream();
        var stream2 = new MemoryStream();
        var stream3 = new MemoryStream();

        GridViewExporter1.WriteXlsx(stream1, new XlsxExportOptionsEx() { SheetName = Grid1.ID });
        GridViewExporter2.WriteXlsx(stream2);
        GridViewExporter3.WriteXlsx(stream3);

        stream1.Seek(0, SeekOrigin.Begin);
        stream2.Seek(0, SeekOrigin.Begin);
        stream3.Seek(0, SeekOrigin.Begin);

        Workbook workbook1 = new Workbook();
        Workbook workbook2 = new Workbook();
        Workbook workbook3 = new Workbook();

        workbook1.LoadDocument(stream1, DocumentFormat.Xlsx);
        workbook2.LoadDocument(stream2, DocumentFormat.Xlsx);
        workbook3.LoadDocument(stream3, DocumentFormat.Xlsx);

        workbook1.Worksheets.Add(Grid2.ID);
        workbook1.Worksheets.Add(Grid3.ID);
        workbook1.Worksheets[Grid2.ID].CopyFrom(workbook2.Worksheets[0]);
        workbook1.Worksheets[Grid3.ID].CopyFrom(workbook3.Worksheets[0]);

        var sourceMs = new MemoryStream();
        workbook1.SaveDocument(sourceMs, DocumentFormat.Xlsx);
        sourceMs.Seek(0, SeekOrigin.Begin);
        var report = sourceMs.ToArray();

        Response.Clear();
        Response.ContentType = "application/xlsx";
        Response.OutputStream.Write(report, 0, report.Length);
        Response.AddHeader("Content-Disposition", "attachment;filename=grids.xlsx");
        Response.End();
    }
}
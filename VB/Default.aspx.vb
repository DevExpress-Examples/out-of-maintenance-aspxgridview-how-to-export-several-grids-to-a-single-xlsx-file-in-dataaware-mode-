
Imports System.IO
Imports DevExpress.Spreadsheet
Imports DevExpress.XtraPrinting

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ExportButton_Click(sender As Object, e As EventArgs)
        Dim stream1 As New MemoryStream()
        Dim stream2 As New MemoryStream()
        Dim stream3 As New MemoryStream()

        GridViewExporter1.WriteXlsx(stream1, New XlsxExportOptionsEx() With {.SheetName = Grid1.ID})
        GridViewExporter2.WriteXlsx(stream2)
        GridViewExporter3.WriteXlsx(stream3)

        stream1.Seek(0, SeekOrigin.Begin)
        stream2.Seek(0, SeekOrigin.Begin)
        stream3.Seek(0, SeekOrigin.Begin)

        Dim workbook1 As New Workbook()
        Dim workbook2 As New Workbook()
        Dim workbook3 As New Workbook()

        workbook1.LoadDocument(stream1, DocumentFormat.Xlsx)
        workbook2.LoadDocument(stream2, DocumentFormat.Xlsx)
        workbook3.LoadDocument(stream3, DocumentFormat.Xlsx)

        workbook1.Worksheets.Add(Grid2.ID)
        workbook1.Worksheets.Add(Grid3.ID)
        workbook1.Worksheets(Grid2.ID).CopyFrom(workbook2.Worksheets(0))
        workbook1.Worksheets(Grid3.ID).CopyFrom(workbook3.Worksheets(0))

        Dim sourceMs = New MemoryStream()
        workbook1.SaveDocument(sourceMs, DocumentFormat.Xlsx)
        sourceMs.Seek(0, SeekOrigin.Begin)
        Dim report = sourceMs.ToArray()

        Response.Clear()
        Response.ContentType = "application/xlsx"
        Response.OutputStream.Write(report, 0, report.Length)
        Response.AddHeader("Content-Disposition", "attachment;filename=grids.xlsx")
        Response.End()
    End Sub
End Class

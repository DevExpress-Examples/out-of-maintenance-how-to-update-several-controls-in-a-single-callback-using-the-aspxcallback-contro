Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub

	Protected Sub ASPxCallback1_Callback(ByVal source As Object, ByVal e As DevExpress.Web.CallbackEventArgs)
		System.Threading.Thread.Sleep(2000) 'Paused for demonstrative purposes

		Dim callbackControl As ASPxCallback = TryCast(source, ASPxCallback)
		Dim time As String = DateTime.Now.ToString("T")
		TextBox1.Text = time
		callbackControl.JSProperties("cpTextBox1") = ASPxCallback.GetRenderResult(TextBox1)
		callbackControl.JSProperties("cpTime") = time
	End Sub
End Class

<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxcb" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxlp" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">

		<dxe:ASPxButton ID="ASPxButton1" runat="server" Text="Get time from server" AutoPostBack="False">
			<ClientSideEvents Click="function(s, e) {
				callbackControl.PerformCallback();
				loadingPanel.Show();
			}" />
		</dxe:ASPxButton>

		<br />

		<dxcb:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="callbackControl" OnCallback="ASPxCallback1_Callback">
			<ClientSideEvents CallbackComplete="function(s, e) {
				document.getElementById('editorContainer').innerHTML = s.cpTextBox1;
				textBox2.SetText(s.cpTime);
				loadingPanel.Hide();
			}" />
		</dxcb:ASPxCallback>

		<dxlp:ASPxLoadingPanel ID="ASPxLoadingPanel1" runat="server" Text="Loading&hellip; Paused for demonsrative purposes"
			ClientInstanceName="loadingPanel" ContainerElementID="formContainer" >
		</dxlp:ASPxLoadingPanel>    

		<table id="formContainer">
			<tr>
				<td>Standard TextBox:</td>
				<td>DevExpress ASPxTextBox:</td>
			</tr>

			<tr>
				<td id="editorContainer">
					<asp:TextBox ID="TextBox1" runat="server" Width="200px" ></asp:TextBox>
				</td>
				<td>
					<dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientInstanceName="textBox2" Width="200px" ></dxe:ASPxTextBox>
				</td>
			</tr>
		</table>

	</form>
</body>
</html>

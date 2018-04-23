using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxCallback;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ASPxCallback1_Callback(object source, DevExpress.Web.ASPxCallback.CallbackEventArgs e){
        System.Threading.Thread.Sleep(2000); //Paused for demonstrative purposes

        ASPxCallback callbackControl = source as ASPxCallback;
        string time = DateTime.Now.ToString("T");
        TextBox1.Text = time;
        callbackControl.JSProperties["cpTextBox1"] = ASPxCallback.GetRenderResult(TextBox1);
        callbackControl.JSProperties["cpTime"] = time;
    }
}

namespace WebFormsAllowHtml.Test
{
    using System;
    using System.Web;
    using System.Web.UI;

    public partial class SupressionWithJavaScript : Page
    {
        protected void OnSubmit(object sender, EventArgs eventArgs)
        {
            this.Submit.Text = "Clicked!";
            this.Description.Text = HttpUtility.UrlDecode(this.Description.Text);
        }
    }
}
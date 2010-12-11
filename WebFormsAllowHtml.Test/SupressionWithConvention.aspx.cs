namespace WebFormsAllowHtml.Test
{
    using System;
    using System.Web.UI;

    public partial class SupressionWithConvention : Page
    {
        protected void OnSubmit(object sender, EventArgs eventArgs)
        {
            this.Submit.Text = "Clicked!";
        }
    }
}
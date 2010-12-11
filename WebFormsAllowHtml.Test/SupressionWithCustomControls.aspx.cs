namespace WebFormsAllowHtml.Test
{
    using System;

    public partial class SupressionWithCustomControls : System.Web.UI.Page
    {
        protected void OnSubmit(object sender, EventArgs eventArgs)
        {
            this.Submit.Text = "Clicked!";
        }
    }
}
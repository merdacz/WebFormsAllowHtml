namespace WebFormsAllowHtml.Test.Controls
{
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    public class EncodedTextBox : TextBox
    {
        protected override void Render(HtmlTextWriter writer)
        {
            base.Render(writer);
            writer.AddAttribute(HtmlTextWriterAttribute.Id, "__" + this.ClientID);
            writer.AddAttribute(HtmlTextWriterAttribute.Name, "__" + this.ClientID);
            writer.AddAttribute(HtmlTextWriterAttribute.Type, "text");
            writer.AddAttribute(HtmlTextWriterAttribute.Style, "display:none");
            writer.RenderBeginTag(HtmlTextWriterTag.Input);
            writer.RenderEndTag();
        }

        protected override void OnPreRender(System.EventArgs e)
        {
            this.Text = HttpUtility.UrlDecode(this.Text);
            base.OnPreRender(e);
        }
    }
}
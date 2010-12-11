namespace WebFormsAllowHtml.Test.Controls
{
    using System;
    using System.Web.UI.WebControls;

    public class EncodedButton : Button 
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            Page.ClientScript.RegisterClientScriptBlock(
                this.GetType(), 
                "Generic", 
@"function EncodeFields() {
    var backingFields = jQuery("":text[name^=__]"");
    backingFields.each(ProcessBackingField).show();
    return true;
}

function ProcessBackingField(index, backingField) {
    var id = backingField.id;
    var originalName = id.substring(2);
    var originalInput = jQuery("":text[name="" + originalName + ""]"");
    var originalValue = originalInput.val();
    backingField.value = originalValue;            
    originalInput.hide();
    originalInput.val(encodeURI(originalValue));
}
", 
                true);
        }
    
        public override string OnClientClick
        {
            get { return "EncodeFields();"; }
            set { throw new InvalidOperationException("This is not supported as I am lazy. "); }
        }
    }
}
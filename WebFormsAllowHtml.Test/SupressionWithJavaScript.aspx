<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupressionWithJavaScript.aspx.cs" Inherits="WebFormsAllowHtml.Test.SupressionWithJavaScript" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/jquery-1.4.4.js" type="text/javascript"></script>
</head>
<body>
   <form id="form1" runat="server">
   <div>
    <p>Try some XSS text (like &lt;textarea /&gt;) below. </p>
    <ul>
        <li>
            <asp:Label ID="FieldAllowingHtmlDescription" AssociatedControlID="Description" Text="This field allows HTML: " runat="server"/>
            <asp:TextBox ID="Description" runat="server" />
        </li>
        <li>
            <asp:Label ID="FieldNotAllowingHtmlDescription" AssociatedControlID="Name" Text="This field does not allow HTML: " runat="server"/>
            <asp:TextBox ID="Name" runat="server" />
        </li>
    </ul>
    <p>
        <asp:Button ID="Submit" Text="Submit" OnClientClick="EncodeFields();" OnClick="OnSubmit" runat="server"/>
    </p>
    </div>
    </form>

    <script type="text/javascript">
        function EncodeFields() {
            var field = jQuery("input[name=Description]");
            var rawValue = field.val();
            var encodedValue = encodeURI(rawValue);
            field.val(encodedValue);
            return true;
        }
    </script>
</body>
</html>

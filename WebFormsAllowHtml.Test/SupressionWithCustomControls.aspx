<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupressionWithCustomControls.aspx.cs" Inherits="WebFormsAllowHtml.Test.SupressionWithCustomControls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.4.js" type="text/javascript"></script>
</head>
<body>
   <form id="form1" runat="server">
   <div>
    <p>Try some XSS text (like &lt;textarea /&gt;) below. </p>
    <ul>
        <li>
            <asp:Label ID="FieldAllowingHtml" AssociatedControlID="Description" Text="This field allows HTML: " runat="server"/>
            <html:EncodedTextBox ID="Description" runat="server" />
        </li>
        <li>
            <asp:Label ID="AnotherFieldAllowingHtml" AssociatedControlID="Review" Text="Yet another field allowing HTML: " runat="server"/>
            <html:EncodedTextBox ID="Review" runat="server" />
        </li>
        <li>
            <asp:Label ID="FieldNotAllowingHtml" AssociatedControlID="Name" Text="This field does not allow HTML: " runat="server"/>
            <asp:TextBox ID="Name" runat="server" />
        </li>
    </ul>
    <p>
        <html:EncodedButton ID="Submit" Text="Submit" OnClick="OnSubmit" runat="server"/>
    </p>
    </div>
    </form>

   
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupressionWithConvention.aspx.cs" Inherits="WebFormsAllowHtml.Test.SupressionWithConvention" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Try some XSS text (like &lt;textarea /&gt;) below. </p>
    <ul>
        <li>
            <asp:Label ID="FieldAllowingHtmlDescription" AssociatedControlID="__Description" Text="This field allows HTML: " runat="server"/>
            <asp:TextBox ID="__Description" runat="server" />
        </li>
        <li>
            <asp:Label ID="FieldNotAllowingHtmlDescription" AssociatedControlID="Name" Text="This field does not allow HTML: " runat="server"/>
            <asp:TextBox ID="Name" runat="server" />
        </li>
    </ul>
    <p>
        <asp:Button ID="Submit" Text="Submit" OnClick="OnSubmit" runat="server"/>
    </p>
    </div>
    </form>
</body>
</html>

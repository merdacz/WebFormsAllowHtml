<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsAllowHtml.Test.Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ul>
            <li>
                <asp:HyperLink ID="SupressionWithConvention" NavigateUrl="~/SupressionWithConvention.aspx" Text="Supression with convention" runat="server" />
            </li>
            <li>
                <asp:HyperLink ID="SupressionWithJavaScript" NavigateUrl="~/SupressionWithJavaScript.aspx" Text="Supression with Java Script" runat="server" />
            </li>
            <li>
                <asp:HyperLink ID="SupressionWithCustomControls" NavigateUrl="~/SupressionWithCustomControls.aspx" Text="Supression with custom controls" runat="server" />
            </li>
        </ul>
    </div>
    </form>
</body>
</html>

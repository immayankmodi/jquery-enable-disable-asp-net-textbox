<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnableDisableTextboxjQuery.aspx.cs"
    Inherits="jQueryEnableDisableTextbox.EnableDisableTextboxjQuery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>AspnetO.com | Enable/Disable Asp.net Textbox</title>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnDisable").click(function () {
                $("input:text").attr("disabled", "disabled");
                return false; //to prevent from postback
            });
            $("#btnEnable").click(function () {
                $("input:text").removeAttr("disabled");
                return false; //to prevent from postback            
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <table>
            <tr>
                <td colspan="2">
                    <b>* Click on any button and try to type text in textbox for demo</b>
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>Try to type:
                </td>
                <td>
                    <asp:TextBox ID="txtTestbox" runat="server" ClientIDMode="Static" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
                <td>
                    <asp:Button ID="btnDisable" runat="server" Text="Disable" />
                    <asp:Button ID="btnEnable" runat="server" Text="Enable" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

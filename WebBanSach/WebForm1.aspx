<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebBanSach.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>   
    <script src="js/jquery-1.11.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#bt1").click(function () {
                $(this).hide();
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id="bt1" type="button" value="button" />
        </div>
    </form>
    	
</body>
</html>

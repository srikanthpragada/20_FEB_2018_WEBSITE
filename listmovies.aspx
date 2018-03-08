<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["city"];  // get cookie with name city 
        if (c == null)
            Response.Redirect("selectcity.aspx");
        else
            lblMsg.Text = "Movies in city [" + c.Value + "]";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

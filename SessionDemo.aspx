<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAddToSession_Click(object sender, EventArgs e)
    {
        Session.Add(txtName.Text, txtValue.Text);
        Response.Write("Add Variable To Session!");
    }

    protected void btnAddToApp_Click(object sender, EventArgs e)
    {
        Application.Add(txtName.Text, txtValue.Text);
        Response.Write("Add Variable To Application!");
    }

    protected void lbShowSession_Click(object sender, EventArgs e)
    {
        foreach( string key in Session.Keys)
        {
            Response.Write(key + " - " + Session[key] + "<br/>");
        }
    }

     protected void lbShowApp_Click(object sender, EventArgs e)
    {
        foreach( string key in Application.Keys)
        {
            Response.Write(key + " - " + Application[key] + "<br/>");
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Session and Application State Demo</h2>
        Variable Name : <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p />
        Variable Value : <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnAddToSession" runat="server" Text="Add To Session" OnClick="btnAddToSession_Click" />
        <asp:Button ID="btnAddToApp" runat="server" Text="Add To Application" OnClick="btnAddToApp_Click" />
        <p />
        <asp:LinkButton ID="lbShowSession" runat="server" OnClick="lbShowSession_Click">Show Session Variables</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbShowApp" runat="server" OnClick="lbShowApp_Click">Show Application Variables</asp:LinkButton>
    </form>
</body>
</html>

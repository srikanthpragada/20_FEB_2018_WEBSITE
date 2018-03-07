<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    // Event handler for Click of btnWish 
    protected void btnWish_Click(object sender, EventArgs e)
    {
        int hours = DateTime.Now.Hour;

        if (hours < 12)
            lblMsg.Text = "Good Morning " + txtName.Text;
        else
            if (hours < 17)
            lblMsg.Text = "Good Afternoon " + txtName.Text;
        else
            lblMsg.Text = "Good Evening " + txtName.Text;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wishing</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Wishing</h1>

        Your name :   
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p></p>
        <asp:Button ID="btnWish" runat="server" Text="Wish" OnClick="btnWish_Click" />
        <p></p>
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double price = Double.Parse(ddlProduct.SelectedItem.Value);
        int units = Int32.Parse(txtUnits.Text);
        double amount = price * units;

        if (units > 10)
            amount *= 0.9;

        if (rbCash.Checked)
            amount *= 0.9;

        if (cbGift.Checked)
            amount += units * 50;

        lblPrice.Text = amount.ToString("#######.00");

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Price Calculator</h1>
        <table cellpadding="5pt">
            <tr>
                <td>Select Product</td>
                <td> 
                    <asp:DropDownList ID="ddlProduct" runat="server">
                          <asp:ListItem Value="70000" Text="Samsung Galaxy S9" />
                          <asp:ListItem Value="80000" Text="iPhone X" />
                          <asp:ListItem Value="34000" Text="One Plus 5T" />
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>No. of Units </td>
                <td><asp:TextBox ID="txtUnits" runat="server" Width="100px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Payment Mode</td>
                <td>
                    <asp:RadioButton ID="rbCash" GroupName="pay" runat="server" Checked="true" />Cash
                    <asp:RadioButton ID="rbCredit" GroupName="pay" runat="server" />Credit
                </td>
            </tr>

            <tr>
                <td>Gift Wrap?</td>
                <td>
                    <asp:CheckBox ID="cbGift" runat="server" />
                </td>
            </tr>
        </table>
        <p></p>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <p></p>
        <asp:Label ID="lblPrice" runat="server" ForeColor="blue" Font-size="20pt" Text=""></asp:Label>

    </form>
</body>
</html>

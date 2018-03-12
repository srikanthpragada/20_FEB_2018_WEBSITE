<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog=msdb;Integrated Security=True");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update products set price = @newprice where prodid = @prodid", con);
            cmd.Parameters.AddWithValue("@newprice", txtNewPrice.Text);
            cmd.Parameters.AddWithValue("@prodid", txtProdId.Text);
            int count = cmd.ExecuteNonQuery();
            if (count == 1)
                lblMsg.Text = "Updated Successfully!";
            else
                lblMsg.Text = "Sorry! Product Id Not Found!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error : " + ex.Message;
        }
        finally
        {
            con.Close();    
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Price</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Update Product Price</h2>
        Product Id <br />
        <asp:TextBox ID="txtProdId" runat="server"></asp:TextBox>
        <p></p>
        New Price <br />
        <asp:TextBox ID="txtNewPrice" runat="server"></asp:TextBox>
        <p></p>
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <p></p>
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        
    </form>
</body>
</html>

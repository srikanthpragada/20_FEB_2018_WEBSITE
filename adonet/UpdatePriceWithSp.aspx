<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog=msdb;Integrated Security=True");
        try
        {
            /* 
            create procedure feb20_update_price2(@prodid int, @newprice money)
            as
                if exists(select * from products where prodid = @prodid)
                    update products set price = @newprice
                    where prodid  = @prodid;
                else
                    raiserror('Product Id Not Found!',16,1)
            */
             
            con.Open();
            SqlCommand cmd = new SqlCommand("feb20_update_price2", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            // Parameter of procedure 
            cmd.Parameters.AddWithValue("@newprice", txtNewPrice.Text);
            cmd.Parameters.AddWithValue("@prodid", txtProdId.Text);
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Updated Successfully!";
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

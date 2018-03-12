<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from products", con);
            SqlDataReader dr = cmd.ExecuteReader();
            String output = "<ul>";
            while(dr.Read())
            {
                output += "<li>" + dr["prodname"].ToString() + "</li>";
            }
            output += "</ul>";

            lblProducts.Text = output;

        }
        catch (Exception ex)
        {
            lblProducts.Text = "Error : " + ex.Message;
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
        <h2>List Of Products</h2>
        
        <asp:Label ID="lblProducts" runat="server" Text=""></asp:Label>
        
    </form>
</body>
</html>

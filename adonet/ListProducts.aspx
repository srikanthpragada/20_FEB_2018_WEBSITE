<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>List Of Products</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
            DataKeyNames="prodid" DataSourceID="sdsProducts">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="Name" SortExpression="prodname" />
                <asp:BoundField DataField="price" ItemStyle-HorizontalAlign="Right" 
                    DataFormatString="{0:##,###,##}"
                    HeaderText="Price" SortExpression="price" >
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="qoh" HeaderText="Quantity" SortExpression="qoh" />
                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                <asp:HyperLinkField DataNavigateUrlFields="prodid" DataNavigateUrlFormatString="salesbyproduct.aspx?prodid={0}" Text="Sales" />
            </Columns>
        </asp:GridView>
         
        <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
         
    </form>
</body>
</html>

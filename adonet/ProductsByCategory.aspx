<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products By Category</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Products By Category</h1>
        Category :
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sdsCategories" DataTextField="catdesc" DataValueField="catcode" AutoPostBack="True">
        </asp:DropDownList>

        <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>

        <asp:DataList ID="DataList1" runat="server"  RepeatLayout="Flow" 
             DataKeyField="prodid" DataSourceID="sdsProducts">
            <ItemTemplate>
               <h3>
                   <%# Eval("prodname") %>
                   <p />
                   <%# Eval("price") %>
               </h3>
            </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
        </asp:DataList>
         
        <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="catcode" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
         
    </form>
</body>
</html>

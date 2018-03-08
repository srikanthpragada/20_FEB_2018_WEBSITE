<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
        {
            lblMsg.Text = "Please select a file to upload!";
            return;
        }
        // Converting virtual path to physical path
        String filename = Request.MapPath("photos/" + FileUpload1.FileName); 
        Response.Write(filename);

        FileUpload1.SaveAs(filename);

        // FileUpload1.PostedFile.InputStream

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Demo</title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <h2>Photo Upload </h2>
        Select Photo :
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <p></p>
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

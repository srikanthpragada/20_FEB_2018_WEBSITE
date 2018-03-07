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
        <h2>Registration</h2>
        Email Address <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required!"></asp:RequiredFieldValidator>
        <p></p>
        Password <br />
        <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="txtPwd"
            ErrorMessage="Password is required!"></asp:RequiredFieldValidator>
        <p></p>
        Confirm Password <br />
        <asp:TextBox ID="txtConfirmPwd" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txtConfirmPwd"
            ErrorMessage="Confirm Password is required!"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="txtConfirmPwd" ControlToCompare="txtPwd"
            Operator="Equal"
            ErrorMessage="Password and Confirm Password do not match!"></asp:CompareValidator>
        <p></p>
        <asp:Button ID="btnRegister" runat="server" Text="Submit" />

    </form>
</body>
</html>

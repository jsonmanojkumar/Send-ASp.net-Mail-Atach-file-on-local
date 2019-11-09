<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>send mail</title>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 252px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 106px">
            <table style="width: 100%;">
                <tr>
                    <td class="style1"></td>
                    <td class="style2">
                        <strong>Email Sytem using asp.net C#</strong></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="style1"></td>
                    <td class="style3"></td>
                    <td></td>
                </tr>
                  <tr>
                    <td class="style1">Name:</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox4" runat="server" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">Email:</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            ControlToValidate="TextBox1" runat="server"
                            ErrorMessage="Please Provide Email ID" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">Subject:</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="style1">massege:</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="style1"></td>
                    <td class="style3"></td>
                    <td></td>
                </tr>


                <tr>
                    <td class="style1">Upload:</td>
                    <td class="style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td></td>
                </tr>



                <tr>
                    <td class="style1">
                        <asp:Label ID="lbmsg" runat="server"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Mail" />
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
        <!--- <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <input id="TextBox1" type="text" /></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <input id="TextBox2" type="text" />

                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button" runat="server" Text="Button"  />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>-->
    </form>
</body>
</html>

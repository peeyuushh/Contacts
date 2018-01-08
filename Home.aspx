<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <img src="Images/HomeLogo.png" alt="Logo" height="300" width="280" />
                </div>
                    <div class="col-sm-6">
            <br />

            <table class="table">
                <tr>
                    <th class="info">
                        <h2>Sign In</h2>
                    </th>
                </tr>

                <tr>
                    <td>
                         <asp:TextBox ID="txtUsername" runat="server" Class="form-control" placeholder="Username" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                     <asp:TextBox ID="txtPassword" runat="server" Class="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Sign In" Class="btn btn-success" OnClick="btnLogin_Click" />
                    </td>
                </tr>            
            </table>
                        </div>
                </div>
        </div>
     </form> 
</body>
</html>

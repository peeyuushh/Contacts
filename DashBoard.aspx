<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashBoard.aspx.cs" Inherits="DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DashBoard</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <br />
    <form id="form1" runat="server">
    <div class="container" style="border: 1px solid blue; border-radius: 25px; height:100px">
        <div class="col-lg-1">
        <asp:Image ID="Image1" runat="server" class="img-circle" Height="95px" Width="90px" ImageUrl="~/Images/HomeLogo.png" />
        </div>
        <div class="col-lg-2">
            <br />
        <asp:Label ID="lblUserame" runat="server" Text="Piyush Priyadarshi" CssClass="badge" Font-Size="25px"></asp:Label>
        <asp:Label ID="lblName" runat="server" Text="Piyush Priyadarshi" CssClass="badge"></asp:Label>
        </div>
    </div>
        <br />
        <div class="container">
            <div class="row">
               <div class="col-sm-4">
                   <br />
                    <asp:TextBox ID="TextBox1" runat="server" Class="form-control" placeholder="Search"></asp:TextBox>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true">
                        <Columns>
                            <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                <ItemTemplate>
                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100" />
                            <asp:BoundField DataField="phone" HeaderText="Phone Number" ItemStyle-Width="100" />
                        </Columns>
                        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
                    </asp:GridView>
               </div>
               <div class="col-sm-8">
                    <asp:Image ID="Image2" runat="server" class="img-circle" Height="200px" Width="200px" ImageUrl="~/Images/HomeLogo.png" />
               </div>
               </div>
        </div>
     
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="final.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">
        <h2 class="container">Liste</h2>
        <div class="container">
            <h3 style="float:left">
                <asp:Button ID="btnDelete" runat="server" Text="Sil" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
            </h3>
            <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="table table-bordered table-striped">
                <Columns>
                    <asp:ButtonField CommandName="Select" HeaderText="Seçim" Text="Seç" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="container">
            <div style="float:left">
                <asp:HyperLink NavigateUrl="~/AddNew.aspx" ID="HyperLinkYeni" runat="server" CssClass="btn btn-info">Yeni</asp:HyperLink>
            </div>
             <div style="float:right">
                <asp:HyperLink NavigateUrl="~/Edit.aspx" ID="HyperLinkEdit" runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink>
            </div>
        </div>
       
    </form>
    <p>
&nbsp;</p>
</body>
</html>

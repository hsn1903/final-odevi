<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNew.aspx.cs" Inherits="final.AddNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                Name:<asp:TextBox ID="TextName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                Surname:<asp:TextBox ID="TextSurname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                Deparment:<asp:TextBox ID="TextDepartment" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                Wage:<asp:TextBox ID="TextWage" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                Address:<asp:TextBox ID="TextAddress" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                Doğum Yeri:<asp:TextBox ID="TextDogumYeri" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <div class="form-group">
                 <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="btnEkle_Click" />
            </div>

        </div>
    </form>
</body>
</html>

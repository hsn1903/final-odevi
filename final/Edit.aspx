<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="final.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 10px">
            <div class="form-group">

                <div style="float:left; width:91%">
                     ID:<asp:TextBox ID="TextID" runat="server" CssClass="form-control" OnTextChanged="TextID_TextChanged"></asp:TextBox>
                </div>
               <div style="float:left">
                   <asp:Button ID="btnKayitGetir" runat="server" Text="Kayıt Getir" CssClass="btn btn-primary" style="margin-top:23px" OnClick="btnKayitGetir_Click"  />
               </div>
                
            </div>
            <br />
            <br />
            <br />
            
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
                 <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="btnGuncelle_Click" />
            </div>

        </div>
    </form>
</body>
</html>

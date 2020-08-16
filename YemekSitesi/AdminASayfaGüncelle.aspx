<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminASayfaGüncelle.aspx.cs" Inherits="AdminASayfaGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            margin-left: 40px;
        }
        .auto-style17 {
            height: 23px;
            margin-left: 40px;
        }
        .auto-style18 {
            height: 26px;
            margin-left: 40px;
        }
        .auto-style19 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style20 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style16"><strong>Konu Başlığı:</strong></td>
            <td class="auto-style16"><strong>
                <asp:TextBox ID="TextBox1" runat="server" Width="304px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>İçerik:</strong></td>
            <td class="auto-style17"><strong>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="305px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Görüntü:</strong></td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="2"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="36px" OnClick="Button1_Click" Text="Kaydet" Width="69px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>


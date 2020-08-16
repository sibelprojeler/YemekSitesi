<%@ Page Title="" Language="C#" MasterPageFile="~/KullanıcıMasterPage.master" AutoEventWireup="true" CodeFile="TarifÖner.aspx.cs" Inherits="TarifÖner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style23 {
            width: 450px;
            height: 463px;
            background-color:#d4fae9;
        }
        .auto-style24 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style23">
        <tr>
            <td><strong>Yemek Adı</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Malzemeler</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Yapılışı</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td><strong>Ad Soyad</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>e-posta</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="40px" OnClick="Button1_Click" Text="Gönder" Width="80px" />
                </strong></em>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


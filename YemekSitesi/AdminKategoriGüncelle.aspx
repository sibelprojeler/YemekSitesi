<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminKategoriGüncelle.aspx.cs" Inherits="KategoriGüncelleAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: justify;
        }
        .auto-style16 {
            font-weight: bold;
        }
        .auto-style17 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td><strong></strong></td>
            <td><strong></strong></td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>KATEGORİ AD</strong></td>
            <td class="auto-style15"><strong>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>ADET</strong></td>
            <td class="auto-style15"><strong>
                <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>RESİM</strong></td>
            <td class="auto-style15"><strong>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style15"><strong></strong></td>
            <td class="auto-style15"><strong></strong></td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style16" OnClick="Button1_Click" Text="Kaydet" />
                </strong></td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTarifGüncelle.aspx.cs" Inherits="TarifGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        }
        .auto-style17 {
            height: 26px;
        }
        .auto-style18 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td><strong>YEMEK AD</strong></td>
            <td><strong>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>MALZEME</strong></td>
            <td class="auto-style17"><strong>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td><strong>TARİF</strong></td>
            <td><strong>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td><strong>RESİM</strong></td>
            <td><strong>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </strong></td>
        </tr>
        <tr>
            <td><strong>KATEGORİ</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="2"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="40px" Text="Kaydet" Width="85px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong></td>
        </tr>
    </table>
</asp:Content>


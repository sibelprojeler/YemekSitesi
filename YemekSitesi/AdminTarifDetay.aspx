<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTarifDetay.aspx.cs" Inherits="AdminTarifDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            font-weight: bold;
        }
        .auto-style18 {
            margin-left: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox1" runat="server" Width="397px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Malzemeler:
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="310px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Tarif:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </strong>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="304px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="auto-style16"><strong>Kategori:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                </strong>
            </td>
        </tr>

        <tr>
            <td class="auto-style16"><strong>Tarif Sahibi:<asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style18" Width="308px"></asp:TextBox>
                <br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>e-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" OnClick="Button1_Click" Text="Kaydet" Height="38px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


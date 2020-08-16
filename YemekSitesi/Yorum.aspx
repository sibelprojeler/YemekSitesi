<%@ Page Title="" Language="C#" MasterPageFile="~/KullanıcıMasterPage.master" AutoEventWireup="true" CodeFile="Yorum.aspx.cs" Inherits="Yorum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            width: 100%;
        }
        .auto-style24 {
            width: 444px;
        }
        .auto-style25 {
            width: 444px;
            text-align: center;
        }
        .auto-style26 {
            width: 279px;
            height: 42px;
        }
        .auto-style27 {
            margin-left: 0px;
        }
        .auto-style28 {
            width: 444px;
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style24" colspan="2"><strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="125px" TextMode="MultiLine" Width="419px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style24" colspan="2">
                <table class="auto-style23">
                    <tr>
                        <td><strong>Yorum Yapan</strong></td>
                        <td><strong>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>@e-mail</strong></td>
                        <td><strong>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </strong></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Puan Vermek İster misin?Puan</strong></td>
            <td class="auto-style28">&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style27" Width="107px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="2">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Gönder" />
            </td>
        </tr>
    </table>
</asp:Content>


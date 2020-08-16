<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminYorumGüncelle.aspx.cs" Inherits="AdminYorumSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            margin-left: 160px;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style19 {
            height: 26px;
            width: 174px;
        }
        .auto-style20 {
            margin-left: 200px;
            height: 26px;
        }
        .auto-style21 {
            height: 18px;
            width: 174px;
        }
        .auto-style22 {
            margin-left: 160px;
            height: 18px;
        }
        .auto-style23 {
            margin-left: 160px;
            height: 26px;
        }
        .auto-style18 {
            font-weight: bold;
        }
        .auto-style24 {
            width: 174px;
        }
        .auto-style27 {
            text-align: center;
            height: 22px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style24"><strong>Yorum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="auto-style15"><strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="74px" TextMode="MultiLine" Width="279px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Yorum Sahibi</strong></td>
            <td class="auto-style23"><strong>
                <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>@e-mail</strong></td>
            <td class="auto-style22"><strong>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2">
                <table class="auto-style14">
                    <tr>
                        <td><strong>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server"  CssClass="auto-style18" OnClick="Button1_Click" Text="Onay" Height="30px" BackColor="#339933" Width="50px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Text="Red" Width="50px" OnClick="Button2_Click" BackColor="#990000" Height="30px" />
                </strong></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


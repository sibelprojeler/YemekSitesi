<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHakkımızda.aspx.cs" Inherits="AdminHakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            font-weight: bold;
        }
        .auto-style16 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="173px" TextMode="MultiLine" Width="423px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="40px" OnClick="Button1_Click" Text="Kaydet" />
                </strong></td>
        </tr>
    </table>
</asp:Content>


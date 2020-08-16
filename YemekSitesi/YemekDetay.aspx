<%@ Page Title="" Language="C#" MasterPageFile="~/KullanıcıMasterPage.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style16 {
        width: 100%;
            background-color: #CCFFFF;
        }
        .auto-style25 {
            background-color: #00CC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style16">
            <tr>
                <td class="auto-style25"><strong>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Malzemeler</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <strong>Yapılışı</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


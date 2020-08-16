<%@ Page Title="" Language="C#" MasterPageFile="~/KullanıcıMasterPage.master" AutoEventWireup="true" CodeFile="YemekYorumları.aspx.cs" Inherits="YemekYorumları" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            width: 100%;
            height: 58px;
        }
        .auto-style24 {
            font-size: small;
        }
        .auto-style25 {
            background-color: #CCFFFF;
        }
        .auto-style26 {
            background-color: #00CC99;
        }
        .auto-style27 {
            height: 27px;
            background-color: #CCFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style26" colspan="2"><strong>
                        <asp:Label ID="Label2" runat="server" BorderStyle="Outset" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label3" runat="server" BorderStyle="Outset" CssClass="auto-style25" Height="100px" Text='<%# Eval("YorumIcerik") %>' Width="250px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27" style="border-bottom-style: solid">&nbsp; <strong>
                        <asp:Label ID="Label4" runat="server" BorderStyle="Outset" CssClass="auto-style24" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong>&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style27" style="border-bottom-style: solid"><strong>
                        <asp:Label ID="Label5" runat="server" BorderStyle="Outset" CssClass="auto-style24" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


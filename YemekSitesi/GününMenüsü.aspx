<%@ Page Title="" Language="C#" MasterPageFile="~/KullanıcıMasterPage.master" AutoEventWireup="true" CodeFile="GününMenüsü.aspx.cs" Inherits="GününMenüsü" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            margin-top: 0px;
        }
        .auto-style21 {
            color: #000000;
            background-color: #999999;
        }
        .auto-style23 {
            width: 100%;
        }
        .auto-style24 {
            width: 222px;
            height: 24px;
            background-color: #00CC99;
        }
        .auto-style25 {
            width: 222px;
            height: 20px;
            background-color: #CCFFFF;
        }
        .auto-style26 {
            width: 222px;
            height: 23px;
        }
        .auto-style27 {
            color: #CCFFFF;
            background-color: #CCFFFF;
        }
        .auto-style28 {
            background-color: #00CC99;
        }
        .auto-style30 {
            background-color: #CCFFFF;
        }
        .auto-style31 {
            height: 23px;
            background-color: #00CC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList5" runat="server">
        <ItemTemplate>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style24"><strong>
                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("YemekId")%>"><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td></a>
                </tr>
                <tr>
                    <td class="auto-style26"></td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Image ID="Image5" runat="server" CssClass="auto-style27" Height="111px" ImageUrl='<%# Eval("YemekResim") %>' Width="217px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList6" runat="server">
        <ItemTemplate>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style28"><strong>
                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("YemekId")%>"><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td></a>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Image ID="Image8" runat="server" Height="109px" ImageUrl='<%# Eval("YemekResim") %>' Width="211px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList7" runat="server">
        <ItemTemplate>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style31"><strong>
                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("YemekId")%>"><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td></a>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Image ID="Image6" runat="server" Height="117px" ImageUrl='<%# Eval("YemekResim") %>' Width="206px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList4" runat="server">
        <ItemTemplate>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style28"><strong>
                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("YemekId")%>"><asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td></a>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Image ID="Image7" runat="server" Height="144px" ImageUrl='<%# Eval("YemekResim") %>' Width="210px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


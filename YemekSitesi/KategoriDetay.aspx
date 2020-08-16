<%@ Page Title="" Language="C#" MasterPageFile="~/KullanıcıMasterPage.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="Corbalar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style21 {
        width: 101%;
    }
    .auto-style22 {
        text-align: center;
        width: 307px;
    }
    .auto-style23 {
        height: 23px;
        width: 307px;
        text-align: left;
        background-color: #CCFFFF;
    }
    .auto-style24 {
        height: 14px;
        width: 307px;
        background-color: #CCFFFF;
    }
    .auto-style29 {
        color: #FF3300;
        font-size: x-large;
    }
    .auto-style30 {
        width: 307px;
        background-color: #00CC99;
        text-align: left;
    }
    .auto-style33 {
        width: 307px;
        background-color: #CCFFFF;
    }
    .auto-style34 {
        text-align: center;
        width: 700px;
        height: 15px;
        background-color: #CCFFFF;
    }
        .auto-style35 {
            width: 307px;
            background-color: #00CC99;
            text-align: left;
            height: 23px;
        }
        .auto-style36 {
            width: 307px;
            height: 21px;
            background-color: #CCFFFF;
        }
        .auto-style37 {
            width: 307px;
            height: 188px;
        }
        .auto-style39 {
            width: 307px;
            height: 4px;
            background-color: #00CC99;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style21">
            <tr>
                <td class="auto-style34" colspan="2"><strong>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style29"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style35" colspan="2"><strong>Malzemeler</strong></td>
            </tr>
            <tr>
                <td class="auto-style24" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style23" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="2"><strong>Tarif</strong></td>
            </tr>
            <tr>
                <td class="auto-style33" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23" colspan="2">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style37" colspan="2">
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("YemekResim") %>' BorderStyle="Solid" Height="176px" Width="410px" />
                </td>
            </tr>
            
            <tr>
                <td class="auto-style36">
                    <asp:Image ID="Image4" runat="server" Height="54px" ImageUrl="~/Pictures/Yorum.jpg" Width="55px" />
                    <strong><a href='Yorum.aspx?Yemekid=<%#Eval("YemekId")%>'>
                    <asp:Label ID="Label5" runat="server" EnableTheming="True" Text="Yorum Gönder"></asp:Label>
                    </a></strong></td></a>
                <td class="auto-style36">
                    <asp:Image ID="Image5" runat="server" Height="50px" ImageAlign="AbsMiddle" ImageUrl="~/Pictures/oku.jpg" Width="77px" />
                    <a href='YemekYorumları.aspx?Yemekid=<%#Eval("YemekId")%>'><strong>
                    <asp:Label ID="Label6" runat="server" Text="Yorumlar"></asp:Label>
                    </strong></a></td></a>
            </tr>
            
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style39"></td>
            </tr>
            
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


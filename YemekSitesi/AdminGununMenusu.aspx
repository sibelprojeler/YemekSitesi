<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminGununMenusu.aspx.cs" Inherits="AdminGununMenusu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            width: 163px;
        }
        .auto-style17 {
            text-align: center;
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" Width="443px">
        <ItemTemplate>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <a href="AdminGununMenusu.aspx?Yemekid=<%#Eval("YemekId")%>&islem=sec&gununmenusu=true"><asp:Image ID="Image2" runat="server" Height="43px" ImageUrl="~/İkon/Kaydet.png" Width="39px" /></a>
                    </td>
                    <td class="auto-style17">
                         <a href="AdminGununMenusu.aspx?Yemekid=<%#Eval("YemekId")%>&islem=kaldır"><asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/İkon/Sil.png" Width="53px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


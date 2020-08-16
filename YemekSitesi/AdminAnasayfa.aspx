<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminAnasayfa.aspx.cs" Inherits="AdminAnasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 95%;
        }
        .auto-style19 {
            text-align: left;
            width: 252px;
        }
        .auto-style20 {
            text-align: center;
            width: 165px;
        }
        .auto-style21 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style17">
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Baslık") %>'></asp:Label>
                </td>
                <td class="auto-style20">
                    <a href="AdminASayfaGüncelle.aspx?Aid=<%#Eval("id")%>"><asp:Image ID="Image5" runat="server" Height="50px" ImageUrl="~/İkon/Güncelle.png" Width="50px" /></a>
                </td>
                <td class="auto-style21">
                    <a href="AdminAnasayfa.aspx?Aid=<%#Eval("id") %>&islem=sil"><asp:Image ID="Image6" runat="server" Height="50px" ImageUrl="~/İkon/Sil.png" Width="50px" /></a>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


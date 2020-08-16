<%@ Page Title="" Language="C#" MasterPageFile="~/KullanıcıMasterPage.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            width: 100%;
            background-color:#d4fae9
        }
        .auto-style24 {
            font-size: x-large;
        }
        .auto-style25 {
            height: 33px;
        }
        .auto-style26 {
            text-align: justify;
        }
        .auto-style27 {
            margin-right: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style27" >
        <ItemTemplate>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style24" Text='<%# Eval("Baslık") %>' Width="400px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Metin") %>' Width="400px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image5" runat="server" Height="200px" ImageUrl='<%# Eval("Resim") %>' Width="400px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


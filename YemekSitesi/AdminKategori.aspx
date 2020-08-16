<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminKategori.aspx.cs" Inherits="AdminKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            font-weight: bold;
            margin-left: 0px;
        }
        .auto-style16 {
            background-color: #999999;
        }
        .auto-style18 {
            height: 21px;
            width: 141px;
        }
        .auto-style19 {
            text-align: center;
            height: 21px;
        }
        .auto-style20 {
            text-align: center;
            height: 21px;
            width: 149px;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            font-weight: bold;
        }
        .auto-style23 {
            font-weight: normal;
        }
        .auto-style25 {
            text-align: center;
            font-weight: bold;
        }
        .auto-style26 {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style16" ForeColor="White"   BackColor="SlateBlue" Height="30px" >
        <asp:Button ID="Button1" runat="server" CssClass="auto-style25" OnClick="Button1_Click" Text="+" Width="40px" Height="25px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style23">
        </span></strong><span class="auto-style23">
        <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="25px" OnClick="Button2_Click" Text="-" Width="40px" />
        </span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ LİSTESİ</strong></asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px" Height="175px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style18">
                            <strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style20">
                            <a href="AdminKategori.aspx?Kategoriid=<%#Eval("KategoriId")%>&islem=sil"> 
                            <asp:Image ID="Image4" runat="server" Height="25px" ImageUrl="~/İkon/Sil.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style19">
                            <a href="AdminKategoriGüncelle.aspx?Kategoriid=<%#Eval("KategoriId")%>"><asp:Image ID="Image3" runat="server" Height="25px" ImageUrl="~/İkon/Güncelle.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID="Panel5" runat="server" Height="15px" ForeColor="Gray"></asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style16" ForeColor="White" BackColor="SlateBlue" Height="30px">
        <strong>
        <asp:Button ID="Button3" runat="server" Text="+" Width="40px" Height="25px"  OnClick="Button3_Click" CssClass="auto-style25"  />
       </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button4" runat="server" CssClass="auto-style26"  Height="25px" OnClick="Button4_Click" Text="-" Width="40px" />
        &nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ EKLEME</strong></asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style14">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>KATEGORİ AD</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>KATEGORİ İKON</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style22" OnClick="Button5_Click" Text="KAYDET" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>




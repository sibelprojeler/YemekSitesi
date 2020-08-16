<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTarifler.aspx.cs" Inherits="TariflerAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            height: 23px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            text-align: left;
            background-color: #999999;
        }
        .auto-style18 {
            width: 95%;
        }
        .auto-style20 {
            text-align: left;
        }
        .auto-style21 {
            font-weight: bold;
        }
        .auto-style22 {
            width: 51%;
        }
        .auto-style23 {
            height: 63px;
        }
        .auto-style24 {
            height: 31px;
        }
        .auto-style25 {
            text-align: center;
            width: 88px;
        }
        .auto-style28 {
            height: 23px;
            font-weight: bold;
        }
        .auto-style29 {
            text-align: left;
            background-color: #999999;
            margin-top: 0px;
        }
        .auto-style30 {
            text-align: center;
            width: 94px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" CssClass="auto-style29" BackColor="SlateBlue" ForeColor="White" Height="30px" >
        <strong>
        <asp:Button ID="Button1" runat="server" Text="+" Width="40px" Height="25px" OnClick="Button1_Click" CssClass="auto-style21" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style28" Text="-" Width="40px" Height="25px" OnClick="Button2_Click"/>
        </strong>&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;YEMEK LİSTESİ</strong></asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="auto-style16">
            <asp:DataList ID="DataList1" runat="server" Width="350px">
                <ItemTemplate>
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style22"><strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style30"><a href='AdminTarifler.aspx?Yemekid=<%#Eval("YemekId")%>&islem=sil'>
                                <asp:Image ID="Image4" runat="server" Height="25px" ImageUrl="~/İkon/Sil.png" Width="40px" />
                                </a></td>
                            <td class="auto-style25"><a href='AdminTarifGüncelle.aspx?Yemekid=<%#Eval("YemekId")%>'>
                                <asp:Image ID="Image3" runat="server" Height="25px" ImageUrl="~/İkon/Güncelle.png" Width="40px" />
                                </a></td>

                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" Height="15px" ForeColor="Gray"></asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style17" ForeColor="White" Height="30px" BackColor="SlateBlue">
        <strong>
        <asp:Button ID="Button3" runat="server" Text="+" Width="40px" Height="25px" OnClick="Button3_Click" CssClass="auto-style21" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="25px" OnClick="Button4_Click" Text="-" Width="40px"  />
        &nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;YEMEK EKLEME</strong></asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Height="500px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style15" colspan="2"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td colspan="2"><strong>YEMEK AD</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"><strong>MALZEME</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="254px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23" colspan="2"><strong>TARİF</strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" colspan="2"><strong>KATEGORİ</strong></td>
                <td class="auto-style24">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><strong>FOTOĞRAF</strong></td>
                <td>
                    &nbsp;</td>
                <td class="auto-style20">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="3"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style21" Text="Kaydet" OnClick="Button5_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="3">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


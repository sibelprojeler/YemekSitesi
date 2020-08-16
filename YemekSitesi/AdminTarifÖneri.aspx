<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTarifÖneri.aspx.cs" Inherits="AdminTarifOnay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            background-color: #009999;
        }
        .auto-style16 {
            width: 190px;
            text-align: left;
        }
        .auto-style18 {
            width: 383px;
        }
        .auto-style19 {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15" Height="30px" Width="450px" BackColor="SlateBlue" ForeColor="White">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;ONAY BEKLEYEN TARİFLER</asp:Panel>
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style20" style="margin-top: 22px" Width="447px">
            <ItemTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style16"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style19"><a href='AdminTarifDetay.aspx?Tarifid=<%#Eval("TarifId")%>'>
                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkon/Güncelle.png" Width="65px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </strong>
    
</asp:Content>


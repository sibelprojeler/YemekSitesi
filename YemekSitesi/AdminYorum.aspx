<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminYorum.aspx.cs" Inherits="AdminYorumOnay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            background-color: #009999;
            margin-right: 0px;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style21 {
            text-align: right;
            height: 95px;
        }
        .auto-style22 {
            text-align: justify;
            width: 246px;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            width: 247px;
        }
        .auto-style26 {
            width: 100%;
            height: 50px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" Height="40px" BackColor="SlateBlue" ForeColor="White">
         <strong>
         <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="35px" Text="+" Width="35px" OnClick="Button1_Click1" />
         &nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="35px" Text="-" Width="35px"  OnClick="Button2_Click1" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ONAYSIZ YORUM LİSTESİ</strong>  </asp:Panel>
         <asp:Panel ID="Panel2" runat="server" Height="111px" Width="450px">
             <div class="auto-style21">
                 <asp:DataList ID="DataList1" runat="server" Height="119px" Width="447px" >
                     <ItemTemplate>
                         <table class="auto-style26">
                             <tr>
                                 <td class="auto-style22">
                                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style23">
                                     <a href='AdminYorumGüncelle.aspx?Yorumid=<%#Eval("YorumId")%>'><asp:Image ID="Image2" runat="server" Height="38px" ImageUrl="~/İkon/Güncelle.png" Width="46px" /></a>
                                 </td>
                             </tr>
                         </table>
                     </ItemTemplate>
                 </asp:DataList>
             </div>
     </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" Height="20px" Width="450px" BackColor="LightGray"></asp:Panel> 
               
           <asp:Panel ID="Panel3" runat="server" CssClass="auto-style18" Height="40px" Width="449px" BackColor="SlateBlue" ForeColor="White">
                   <strong>
                   <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="35px" Text="+" Width="35px" OnClick="Button3_Click" />
                   </strong>&nbsp;&nbsp;
                   <strong>
                   <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="35px" OnClick="Button4_Click" Text="-" Width="35px" />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ONAYLI YORUM LİSTESİ</strong> </asp:Panel>
                   
                   <asp:Panel ID="Panel4" runat="server" Height="283px" Width="450px">
                       <asp:DataList ID="DataList2" runat="server" Width="442px">
                           <ItemTemplate>
                               <table class="auto-style26">
                                   <tr>
                                       <td class="auto-style24">
                                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                       </td>
                                       <td class="auto-style23">
                                           <a href='AdminYorum.aspx?Yorumid=<%#Eval("YorumId")%>&islem=sil'><asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/İkon/Sil.png" Width="49px" /></a>
                                       </td>
                                   </tr>
                               </table>
                           </ItemTemplate>
                       </asp:DataList>
                      
                    
                   </asp:Panel>
                  
            </asp:Content>


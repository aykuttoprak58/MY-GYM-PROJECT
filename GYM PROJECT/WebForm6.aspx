<%@ Page Title="" Language="C#" MasterPageFile="~/ANAFORM.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="GYM_PROJECT.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 41%;
            table-layout: fixed;
            position: absolute;
            left: 512px;
            top: 261px;
            height: 374px;
           background-image: url('IMAGES/LION.jpg');
           background-repeat:no-repeat;
           background-size:cover;
        }

        .auto-style2 {
            width: 330px;
            font-size: 30px;
            text-align: center;
        
        }

        .auto-style5 {
            font-size: 20px;
            text-align: center;
            font-weight: lighter;
            color: red;
        }
        
        .auto-style6 {
            margin-right: 0;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main" style="height: 1200px; background-image: url('images/ALI.jpg');">


        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-weight: normal; color: #FF0000">User Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="228px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FF0000">Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="228px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" Height="71px" Text="LOGIN" Width="172px" Font-Size="20pt" OnClick="Button1_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" BackColor="#3333FF" CssClass="auto-style6" Font-Size="Large" ForeColor="White" Height="67px" OnClick="Button2_Click1" Text="SAVE" Width="178px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            </table>


    </div>
</asp:Content>

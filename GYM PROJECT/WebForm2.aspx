<%@ Page Title="" Language="C#" MasterPageFile="~/ANAFORM.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="GYM_PROJECT.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 76%;
            height: 469px;
            margin-right: 0px;
            position:absolute;
            left: 165px;
            top: 90px;
            text-align:center;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main" style="height:1200px; background-image: url('images/ALI.jpg');"></div>
    <table class="auto-style1" style="font-size: 80px; font-weight: bold; color: #FF0000; font-family: 'Dosis SemiBold'">
        <tr>
            <td>BOXING</td>
        </tr>
        <tr>
            <td>KICKBOXING</td>
        </tr>
        <tr>
            <td>MUAY THAI</td>
        </tr>
        <tr>
            <td>WRESTLING</td>
        </tr>
        <tr>
            <td>KARATE</td>
        </tr>
        <tr>
            <td>MMA</td>
        </tr>
    </table>

</asp:Content>
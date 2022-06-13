<%@ Page Title="" Language="C#" MasterPageFile="~/ANAFORM.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="GYM_PROJECT.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        button {
            position: absolute;
        }


        .auto-style4 {
            width: 46%;
            height: 484px;
            position: absolute;
            left: 150px;
            top: 278px;
        }

        .auto-style5 {
            --bs-gutter-x: 1.5rem;
            --bs-gutter-y: 0;
            display: flex;
            flex-wrap: wrap;
            margin-top: calc(-1 * var(--bs-gutter-y));
            margin-right: calc(-0.5 * var(--bs-gutter-x));
            margin-left: calc(-0.5 * var(--bs-gutter-x));
            height: 900px;
        }

        .auto-style7 {
            width: 239px;
            color: red;
            text-align: center;
            font-family: Arial;
            font-weight: bold;
            font-size: 25px;
        }

        .auto-style8 {
            width: 239px;
            color: red;
            text-align: center;
            font-family: Arial;
            font-weight: bold;
            font-size: 25px;
            height: 32px;
        }

        .auto-style9 {
            position: absolute;
            height: 32px;
            width: 216px;
        }

        .auto-style10 {
            width: 239px;
            color: red;
            text-align: center;
            font-family: Arial;
            font-weight: bold;
            font-size: 25px;
            height: 35px;
        }

        .auto-style11 {
            position: absolute;
            height: 35px;
            width: 216px;
        }

        .auto-style12 {
            position: absolute;
            width: 216px;
        }

        .auto-style13 {
            width: 239px;
            color: red;
            text-align: center;
            font-family: Arial;
            font-weight: bold;
            font-size: 25px;
            height: 34px;
        }

        .auto-style14 {
            position: absolute;
            width: 216px;
            height: 34px;
        }

        .auto-style15 {
            width: 239px;
            color: red;
            text-align: center;
            font-family: Arial;
            font-weight: bold;
            font-size: 25px;
            height: 33px;
        }

        .auto-style16 {
            position: absolute;
            width: 216px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main" style="background-image: url('IMAGES/ALI.jpg'); height: 1200px">

        <div class="auto-style5">





            <table class="auto-style4" style="background-image: url('IMAGES/cus.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center;">
                <tr>
                    <td class="auto-stle8" colspan="2" style="text-align: center; color: #FF0000; font-weight: bold; font-family: Arial; font-size: 30px;">REGISTRATION</td>
                </tr>
                <tr>
                    <td class="auto-style8">NAME</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">SURNAME</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">AGE</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">GENDER</td>
                    <td class="auto-style16">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName='group1' Text='MALE' Font-Bold="True" ForeColor="White" Font-Size="20px" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName='group1' Text='FEMALE' Font-Bold="True" ForeColor="White" Font-Size="20px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">HEIGHT</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">WEIGHT</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">E-MAIL</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">PHONE</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">SALON</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">COURSEk</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">TRAINER</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">TIME</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList4" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="color: #0099FF">PLEASE PRESS BUTTON TO REGISTER</td>
                    <td class="auto-style12">
                        <asp:Button ID="Button1" runat="server" BackColor="Red" Font-Bold="True" Font-Size="25pt" ForeColor="Black" Height="100px" Text="SAVE" Width="453px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/ANAFORM.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="GYM_PROJECT.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .main {
            height: 1200px;
        }

        td.auto-style4 {
            color: blue;
        }

        .auto-style1 {
            width: 465px;
            height: 264px;
        }

        .auto-style2 {
            width: 100%;
            position: absolute;
            left: 19px;
            top: 173px;
        }

        td.gy {
            color: red;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main" style="background-image: url('images/MMA.jpg'); background-repeat: no-repeat; background-size: cover;">


        <table class="auto-style2">
            <tr>
                <td>
                    <img class="auto-style1" src="IMAGES/GOKHAN.jpg" /></td>
                <td>
                    <img class="auto-style1" src="IMAGES/KHABIB.jpg" /></td>
                <td>
                    <img class="auto-style1" src="IMAGES/TYSON.jpg" /></td>
            </tr>
            <tr>
                <td class="gy";> TRANIER NAME: GOKHAN SAKI<br />
                    NATIONALIY: TURKEY<br />
                    MARTIAL ART: KICKBOXING,BOXING,MUAY THAI,WRESTLING</td>
                <td class="gy";> TRANIER NAME: KHABIB NURMANDEGEDOV<br />
                    NATIONALIY: RUSSIAN<br />
                    MARTIAL ART: MMA,JUDO,SAMBO,WRESTLING</td>
                <td class="gy";> TRANIER NAME: MIKE TYSON<br />
                    NATIONALIY: USA<br />
                    MARTIAL ART: BOXING</td>
            </tr>
            <tr>
                <td>
                    <img class="auto-style1" src="IMAGES/HAMZA.jpeg" /></td>
               <td><img class="auto-style1" src="IMAGES/BOYKA.jpg" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="gy";> TRANIER NAME: HAMZA YERLIKAYA<br />
                    NATIONALIY: TURKEY<br />
                    MARTIAL ART: WRESTLING</td>
               <td class="gy";> TRANIER NAME: YURİ BOYKA<br />
                    NATIONALIY: RUSSIAN<br />
                    MARTIAL ART: JUDO,KRAV MAGA,KICKBOXING,BOXING,MUAY THAI,BJJ,WRESTLING,WING-CHUN,KARATE</td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="InvidualAssign.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--    <link href="CSS/HomePageStyle.css" rel="stylesheet" type="text/css" />--%>
    <link href="HomePageStyle.css" rel="stylesheet" />

    <title>
        Around South Sinai 
    </title>
    <style>
        .auto-style2 {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 67%;
        }
        .auto-style3 {
            display: block;
            margin-left: 0px;
            margin-right: auto;
            width: 100%;
            height: 170px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Mydiv center">
                    
            <img src="Images/MyEgypt.png" alt="BannerMyEgypt" class="auto-style3"/>
            <br />
        
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:Timer ID="Timer1" Interval="5000" runat="server"/>
            <asp:UpdatePanel ID="up1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="timer1" EventName="tick" />
                </Triggers>
                <ContentTemplate>
                   <asp:AdRotator ID="AdRotator2" runat="server" 
                       AdvertisementFile="~/Ads.xml" Target="_blank" 
                       CssClass="center" Height="302px" Width="1247px"/>
                </ContentTemplate>
            </asp:UpdatePanel>
        <br />
        </div>

        

        <div style="height:240px" class="center">
            <asp:ImageButton ID="dahabBtn" runat="server" CssClass="dahab center" ImageUrl="~/Images/dahabText.png" />
            <asp:ImageButton ID="stCatherinBtn" runat="server" CssClass="StCathrine center" ImageUrl="~/Images/stCathrineText.png" OnClick="stCatherinBtn_Click" />
            <asp:ImageButton ID="nuweibaBtn" runat="server" CssClass="Nuweibaa center" ImageUrl="~/Images/nuwebiaText.png" />
            <asp:ImageButton ID="sharmBtn" runat="server" CssClass="sharm center" ImageUrl="~/Images/SharmEksheikhText.png" />
            
        </div>

        <div>
            <h1 
                style="font-family:paragraph;
                font-style: normal;
                font-weight: normal;
                font-size: 24px;
                line-height: 29px;
                text-align: center;"
                class="auto-style2 "

                >
                South Sinai Governorate is the least populated governorate of Egypt.
 It is located in the eastern part of the country, including the southern half of the Sinai Peninsula. South Sinai Governorate lies in the south tier of Sinai Peninsula in the shape of a triangle. It has various mountains in the center.
South Sinai is one of the most beautiful tourist areas in Egypt. The governorate features natural beauty in its beaches, valleys, plains, and mountains. For this reason, the governorate is considered as an international center for various types of tourism.

            </h1>
        </div>

    </form>
</body>
</html>

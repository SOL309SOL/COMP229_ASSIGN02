<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .bg{
            background-color:rgba(33,21,0,0.7);
            width:99%;
            height:99%;
            border-radius:20px;
            margin: 5px auto 0px auto;

        }
        .privacy{
            font-size:0.7em;
            padding-right:20px;
        }
        .jumbo_footer{
            margin-top:80px;
        }
        .smallFont{
            font-size:0.7em;
        }
        h1{
            font-family:'Comic Sans MS';
            margin-bottom:20px;
        }
    </style>
    <div class="bg">
    <div class="jumbotron">
     
        <asp:ImageButton ID="logo" runat="server" ImageUrl="~/img/logo1.png" Width="50px" />
        <p class="smallFont">Sole restaurnat</p><br />
   <h1>Take your chance!</h1>
    <p class="smallFont">Welcome our company!<br />Take your 5 minutes and get your $1,000,000,000 with this survey. <br />
        We will inform winner after Oct 30th<br /></p>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Survey.aspx" CssClass="btn btn-default">Take a Survey</asp:LinkButton><br />


        <div class="jumbo_footer">

        <p><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/home_logo.png" Width="30px" /></p>
        <p class="privacy"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://privacy.microsoft.com/en-us/privacystatement">Privacy statement</asp:HyperLink> |
   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://support.microsoft.com/en-us/help/11532/windows-disclaimers">Disclaimers</asp:HyperLink></p>
    </div>
        </div>
    </div>

</asp:Content>

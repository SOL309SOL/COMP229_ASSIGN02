<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="def_bg">
    <div class="jumbotron">
     <br /><br />
        <asp:ImageButton ID="logo" runat="server" ImageUrl="~/img/logo1.png" Width="50px" />
        <p class="smallFont">Sole restaurnat</p>
   <h1>Take your chance!</h1>
    <p class="smallFont">Welcome our company!<br />Take your 5 minutes and get your $1,000,000,000 with this survey. <br />
        We will inform winner after Oct 30th<br /></p>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Survey.aspx" CssClass="btn btn-default">Take a Survey</asp:LinkButton>


        <div class="jumbo_footer">

        <p class="privacy"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://privacy.microsoft.com/en-us/privacystatement" ForeColor="Wheat">Privacy statement</asp:HyperLink> |
   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://support.microsoft.com/en-us/help/11532/windows-disclaimers" ForeColor="Wheat">Disclaimers</asp:HyperLink></p>
    </div>
        </div>
    </div>


        <%--References :
        background image: https://www.google.ca/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwj_hrrczdvWAhWCy4MKHR1nDZwQjRwIBw&url=http%3A%2F%2Fwww.wallpapersin4k.org%2Fimages%2F958659&psig=AOvVaw31aaU-f5REO7Bwiu3_6Q8g&ust=1507365887510068
        logo image: https://www.google.ca/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwig57rpodvWAhUK5IMKHdMyDSIQjRwIBw&url=https%3A%2F%2Fwww.kent.edu%2Fsole&psig=AOvVaw3rUrifNo3BCdLumACClaGP&ust=1507354116626039--%>
</asp:Content>

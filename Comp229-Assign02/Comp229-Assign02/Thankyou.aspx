<%@ Page Title="Thank you!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="Comp229_Assign02.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="bg">
 <h1><%: Title %>.</h1>
    <p>Your survey is submitted successfully!</p>
        <p>Your information is:</p>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

<%@ Page Title="Thankyou" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="Comp229_Assign02.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="bg">
 <h1><%: Title %>.</h1>
    <p>Your survey is submitted successfully!</p>
        <p>Your information is:</p>
        <div class="text-left">
        <strong>E-mail</strong>:
        <asp:Label ID="Label1" runat="server" Text="Label" /><br />
        <strong>Gender</strong>:
        <asp:Label ID="Label8" runat="server" Text="Label" /><br />
        <strong>Age</strong>:
        <asp:Label ID="Label4" runat="server" Text="Label" /><br />
        <strong>Budget</strong>:
        <asp:Label ID="Label2" runat="server" Text="Label" /><br />
        <strong>Dish that you like</strong>:
        <asp:Label ID="Label5" runat="server" Text="Label" /><br />
        <strong>How Often did you visit</strong>:
        <asp:Label ID="Label6" runat="server" Text="Label" /><br />
        <strong>Satisfaction about our restaurant</strong>:
        <asp:Label ID="Label7" runat="server" Text="Label" /><br />
        <strong>Suggestion</strong>:
        <asp:Label ID="Label3" runat="server" Text="Label" /><br />
    </div>
        <br />
        <br />
        <asp:Button ID="Button1" CssClass="btn-warning" runat="server" Text="Back to Home" OnClick="Button1_Click" />
        </div>
  
</asp:Content>

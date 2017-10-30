<%@ Page Title="Thankyou" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="Comp229_Assign02.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="bg">
 <h1><%: Title %>.</h1>
    <p>Your survey is submitted successfully!</p>
        <p>Your information is:</p>

        E-mail :
        <asp:Label ID="Label1" runat="server" Text="Label" /><br />
        Age :
        <asp:Label ID="Label4" runat="server" Text="Label" /><br />
        Price :
        <asp:Label ID="Label2" runat="server" Text="Label" /><br />
        Suggestion :
        <asp:Label ID="Label3" runat="server" Text="Label" /><br />
        
    </div>
  
</asp:Content>

<%@ Page Title="Thankyou" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="Comp229_Assign02.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <style>
       .bg {
           background-color: rgba(33,21,0,0.7);
           width: 95%;
           margin: 130px auto 50px auto;
           height: 500px;
           border-radius: 20px;
           box-shadow: 2px 2px 2px #541E1C;
           padding: 10px;
           color: white;
       }
   </style>
    <div class="bg">
 <h2><%: Title %>.</h2>
    </div>
</asp:Content>

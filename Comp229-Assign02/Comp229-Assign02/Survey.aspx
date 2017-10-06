<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        .survey{
             background-color:rgba(33,21,0,0.7);
             width:95%;
             margin: 130px auto 0px auto;
             height:100%;
             border-radius:20px;
             box-shadow:2px 2px 2px #541E1C;
             padding:10px;
             color:white;
        }
       .home_logo{
           margin-left:45%;
           margin-top:20px;
       }
        h1{
             text-align:center;
        }
    </style>
    <div class="survey">
        <div class="form-group">
           <h1><%: Title %></h1>

        <asp:Table class="form_group" runat="server" Width="100%">
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label2" runat="server" Text="1.Please give your email address"></asp:Label></asp:TableCell>
            </asp:TableRow> 
            <asp:TableRow> 
                    <asp:TableCell><asp:TextBox ID="TextBox1" runat="server" CausesValidation="False"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter proper data" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>

                </asp:TableCell>
            </asp:TableRow> 



            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="1. What is your wish price for dish?"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="Red" ErrorMessage="Out of Range" ControlToValidate="TextBox2" MinimumValue="20" MaximumValue="70" ></asp:RangeValidator>
                </asp:TableCell>
            </asp:TableRow>
 
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label7" runat="server" Text="1. What is your gender?"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Male" Value="value" Selected="True" />
                        <asp:ListItem Text="Female" Value="value" Selected="False" />
                        <asp:ListItem Text="I don't want to say" Value="value" Selected="False" />
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label8" runat="server" Text="2. How old are you?"></asp:Label></asp:TableCell>

            </asp:TableRow>
           <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem value="value" selected="True">10 to 20</asp:ListItem>
                        <asp:ListItem value="value" selected="false">20 to 30</asp:ListItem>
                        <asp:ListItem value="value" selected="false">30 to 40</asp:ListItem>
                        <asp:ListItem value="value" selected="false">over 50</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="tableRow1">
                <asp:TableCell><asp:Label ID="Label6" runat="server" Text="3. In a typical month, how often do you visit our restaurant?"></asp:Label></asp:TableCell>
            </asp:TableRow> 
             <asp:TableRow>
                <asp:TableCell>
                   <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="First Visit" Value="value" Selected="True" />
                        <asp:ListItem Text="Once or Twice" Value="value" Selected="True" />
                        <asp:ListItem Text="More Than Four Times" Value="value" Selected="True" />
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label9" runat="server" Text="4. What kind of food do you like?"></asp:Label></asp:TableCell>
            </asp:TableRow> 
             <asp:TableRow>
                <asp:TableCell>
                    <input id="Checkbox1" type="checkbox" />Pasta
                    <input id="Checkbox2" type="checkbox" />Pizza
                    <input id="Checkbox3" type="checkbox" />Main Dish
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label10" runat="server" Text="5. Rate your satisfaction with:"></asp:Label></asp:TableCell>
            </asp:TableRow> 
             <asp:TableRow>
                <asp:TableCell>
                   <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="1" Value="value" Selected="True" />
                        <asp:ListItem Text="2" Value="value" Selected="False" />
                        <asp:ListItem Text="3" Value="value" Selected="False" />
                       <asp:ListItem Text="4" Value="value" Selected="False" />
                       <asp:ListItem Text="5" Value="value" Selected="False" />
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
           <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label5" runat="server" Text="6. Do you have any suggestions to improve our quality of service?"></asp:Label></asp:TableCell>
            </asp:TableRow> 
            <asp:TableRow> 
                    <asp:TableCell><asp:TextBox ID="TextBox3" runat="server" CausesValidation="False" Width="50%" Height="100px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
           






            <asp:TableRow>
                <asp:TableCell><asp:Button ID="Button1" runat="server" Text="Button" PostBackUrl="~/Thankyou.aspx" /></asp:TableCell>
             
            </asp:TableRow>
        </asp:Table>
        </div>
        </div>
    <div class="home_logo">
            <p><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/home_logo.png" Width="100px" PostBackUrl="~/Default.aspx" /></p>
    </div>
</asp:Content>

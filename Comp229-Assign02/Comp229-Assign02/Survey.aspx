<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="survey">
        <div class="form-group">
            <h1><%: Title %></h1>
            <script>
                function CheckValue(sender, args) {
                    var chkControlld = 'CheckBoxList1';
                    var options = document.getElementById(chkControlld).getElementsByTagName('input');
                    var ischecked = false;
                    args.IsValid = false;
                    for (i = 0; i < options.length; i++) {
                        var opt = options[i];
                        if (opt.type == "checkbox") {
                            if (opt.checked) {
                                ischecked = true;
                                args.IsValid = true;
                            }
                        }
                    }
                }
            </script>
            <asp:Table class="form_group" runat="server" Width="100%">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="1.Please give your email address"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="example@gmail.com" ></asp:TextBox>&nbsp; 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter proper email address" ControlToValidate="TextBox1" BackColor="#FF5050" Display="Dynamic"></asp:RequiredFieldValidator>&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="This is not a email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox1" BackColor="#FF5050" Display="Dynamic"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="1. What is your wish price for dish?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="50"></asp:TextBox>&nbsp;(20 ~ 150)&nbsp; 

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter proper budget" ControlToValidate="TextBox2" BackColor="#FF5050" Display="Dynamic"></asp:RequiredFieldValidator>&nbsp;

                        <asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="White" ErrorMessage="Out of Range" ControlToValidate="TextBox2" MinimumValue="20" MaximumValue="150" Type="Integer" Display="Dynamic" SetFocusOnError="true" BackColor="#FF5050"></asp:RangeValidator>
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
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="2. How old are you?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>

                        <asp:DropDownList ID="DropDownList2" runat="server" ValidationGroup="Curriculum">
                        
                            <asp:ListItem >10 to 20</asp:ListItem>
                            <asp:ListItem >20 to 30</asp:ListItem>
                            <asp:ListItem >30 to 40</asp:ListItem>
                            <asp:ListItem >over 50</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Curriculum" ErrorMessage="Choose your age" ControlToValidate="DropDownList2" BackColor="#FF5050" InitialValue="Select..."></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="tableRow1">
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="3. In a typical month, how often do you visit our restaurant?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="First Visit" Selected="true" /> 
                            <asp:ListItem Text="Once or Twice" Selected="false" />
                            <asp:ListItem Text="More Than Four Times" Selected="false" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Choose your visit time" ControlToValidate="DropDownList2" BackColor="#FF5050"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="4. What kind of food do you like?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" ValidationGroup="MyForm">
                            <asp:ListItem Value ="1">Pasta</asp:ListItem>
                            <asp:ListItem Value ="2">Pizza</asp:ListItem>
                            <asp:ListItem Value ="3">Main Dish</asp:ListItem>
                        </asp:CheckBoxList>
                        
                        <asp:CustomValidator ID="CustomValidator1" OnServerValidate="CheckBox" runat="server" BackColor="#FF5050" ErrorMessage="Please check one of boxes at least" EnableClientScript="true" ClientValidationFunction="CheckValue" ValidationGroup="MyForm" Display="Dynamic"></asp:CustomValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label10" runat="server" Text="5. Rate your satisfaction with:"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="1" Selected="True" />
                            <asp:ListItem Text="2" Selected="False" />
                            <asp:ListItem Text="3" Selected="False" />
                            <asp:ListItem Text="4" Selected="False" />
                            <asp:ListItem Text="5" Selected="False" />
                        </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="6. Do you have any suggestions to improve our quality of service?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox3" runat="server" CausesValidation="False" Width="50%" Height="100px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                       
                        <br />
                        <asp:Button ID="Button1" CssClass="btn-warning" runat="server" Text="Button" OnClick="Button1_Click1" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" DisplayMode="BulletList" HeaderText="Please see following error:" ShowSummary="False" />
    </div>
    <%--    <div class="home_logo">
            <p><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/home_logo.png" Width="100px" PostBackUrl="~/Default.aspx" /></p>
    </div>--%>
</asp:Content>

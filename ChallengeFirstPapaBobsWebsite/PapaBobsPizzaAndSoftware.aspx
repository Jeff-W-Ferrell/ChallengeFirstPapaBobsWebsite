<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PapaBobsPizzaAndSoftware.aspx.cs" Inherits="ChallengeFirstPapaBobsWebsite.PapaBobsPizzaAndSoftware" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            color: #FF0000;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="papaImage" runat="server" Height="199px" ImageUrl="~/PapaBob.png" Width="193px" />
        <span class="auto-style1"><strong>Papa Bob&#39;s Pizza and Software<br />
        </strong></span>
    
    </div>
        <asp:RadioButton ID="babyRadioButton" runat="server" GroupName="pizzaSize" Text="Baby Bob Size (10&quot;) - $10" />
        <br />
        <asp:RadioButton ID="mamaRadioButton" runat="server" GroupName="pizzaSize" Text="Mama Bob Size (13&quot;) - $13" />
        <br />
        <asp:RadioButton ID="papaRadioButton" runat="server" GroupName="pizzaSize" Text="Papa Bob Size (16&quot;) - $16" />
        <br />
        <br />
        <asp:RadioButton ID="thinRadioButton" runat="server" GroupName="pizzaCrust" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepRadioButton" runat="server" GroupName="pizzaCrust" Text="Deep Dish (+$2)" />
        <br />
        <br />
        <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+1.50)" />
        <br />
        <asp:CheckBox ID="onionCheckBox" runat="server" Text="Onions (+$0.75)" />
        <br />
        <asp:CheckBox ID="greenPeppersCheckBox" runat="server" Text="Green Peppers (+$0.50)" />
        <br />
        <asp:CheckBox ID="redPeppersCheckBox" runat="server" Text="Red Peppers (+$0.75)" />
        <br />
        <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2)" />
        <br />
        <br />
        <span class="auto-style2"><strong><span class="auto-style4">Papa Bob&#39;s </span><span class="auto-style3">Special Deal</span></strong></span><br />
        <br />
        Save $2.00 when you add Pepperoni, Green Peppers and Anchovies OR Pepperoni, Red Peppers, and Onions to your Pizza.<br />
        <br />
        <asp:Button ID="purchaseButton" runat="server" OnClick="purchaseButton_Click" Text="Purchase" />
        <br />
        <br />
        <asp:Label ID="totalLabel" runat="server"></asp:Label>
        <br />
        <br />
        Sorry, at this time you can only order one pizza on line, and pick-up only... We need a better website!<br />
        <br />
    </form>
</body>
</html>

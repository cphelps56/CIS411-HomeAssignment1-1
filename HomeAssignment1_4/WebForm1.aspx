<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HomeAssignment1_4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 452px;
        }
        .auto-style4 {
            width: 158px;
        }
        .auto-style3 {
            width: 533px;
        }
        .auto-style6 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="siteLabel" runat="server" Text="Book Purchase Website"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:DropDownList ID="bookDropDownList" runat="server" Width="198px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="quantityLabel" runat="server" Text="Add Quantity:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="quantityTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="quantityFieldValidator" runat="server" ControlToValidate="quantityTxtBox" ErrorMessage="RequiredFieldValidator">Quantity is required, as a number in the range of 1 to 10.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="purchaseButton" runat="server" OnClick="purchaseButton_Click" Text="Purchase" Width="236px" CssClass="auto-style6" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:RangeValidator ID="quantityRangeValidator" runat="server" ControlToValidate="quantityTxtBox" ErrorMessage="RangeValidator" MaximumValue="10" MinimumValue="1" Type="Integer">The quantity should be a number in the range of 1 to 10.</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="selectionLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

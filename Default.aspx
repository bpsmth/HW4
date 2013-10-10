<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Calculator</title>
    <link rel="stylesheet" type="text/css" href="styling.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <h1>-Braden's Salary Calculator-</h1>
        <asp:Label ID="LblInstruct" runat="server" Text="Enter info to calculate net pay:"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LblWage" runat="server" Text="Hourly Wage: "></asp:Label>
        <asp:TextBox ID="TBWage" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfdWage" runat="server" ControlToValidate="TBWage" ErrorMessage="*Enter an hourly wage!"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LblHours" runat="server" Text="Hours Worked:"></asp:Label>
        <asp:TextBox ID="TBHours" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfdHours" runat="server" ControlToValidate="TBHours" ErrorMessage="*Enter Hours Worked!"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LblPreTax" runat="server" Text="Pre-Tax Deductions:"></asp:Label>
        <asp:TextBox ID="TBPreTax" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="LblPostTax" runat="server" Text="Post-Tax Deductions:"></asp:Label>
        <asp:TextBox ID="TBPostTax" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ButtonCalc" runat="server" Text="Calculate" />
        <asp:Button ID="ButtonClear" runat="server" Text="Clear" />
        <br />
        <br />
        <asp:Label ID="LblResult" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

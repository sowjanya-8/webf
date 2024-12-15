
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Advance Registration Form</title>
    <link rel="stylesheet" type="text/css" href="Content/styles.css">
</head>
<body>
    <form id="registrationForm" runat="server">
        <label for="memberNumber">APA Member Number (8 digits):</label>
        <asp:TextBox ID="memberNumber" runat="server" MaxLength="8" required="true"></asp:TextBox>

        <label for="prefix">Prefix:</label>
        <asp:TextBox ID="prefix" runat="server"></asp:TextBox>

        <label for="firstName">First Name:</label>
        <asp:TextBox ID="firstName" runat="server" MaxLength="15" required="true"></asp:TextBox>

        <label for="middleInitial">Middle Initial:</label>
        <asp:TextBox ID="middleInitial" runat="server" MaxLength="1"></asp:TextBox>

        <label for="lastName">Last Name:</label>
        <asp:TextBox ID="lastName" runat="server" MaxLength="20" required="true"></asp:TextBox>

        <label for="address1">Mailing Address:</label>
        <asp:TextBox ID="address1" runat="server" MaxLength="32" required="true"></asp:TextBox>
        <asp:TextBox ID="address2" runat="server" MaxLength="32"></asp:TextBox>

        <label for="city">City:</label>
        <asp:TextBox ID="city" runat="server" MaxLength="25" required="true"></asp:TextBox>

        <label for="state">State/Province:</label>
        <asp:TextBox ID="state" runat="server"></asp:TextBox>

        <label for="postalCode">Zip/Postal Code:</label>
        <asp:TextBox ID="postalCode" runat="server"></asp:TextBox>

        <label for="country">Country (if not U.S.):</label>
        <asp:TextBox ID="country" runat="server"></asp:TextBox>

        <label for="dayPhone">Daytime Phone:</label>
        <asp:TextBox ID="dayPhone" runat="server"></asp:TextBox>

        <label for="cellPhone">Cell Phone:</label>
        <asp:TextBox ID="cellPhone" runat="server"></asp:TextBox>

        <label for="email">Email Address:</label>
        <asp:TextBox ID="email" runat="server" type="email" required="true"></asp:TextBox>

        <label for="institution">Institution:</label>
        <asp:TextBox ID="institution" runat="server" MaxLength="40"></asp:TextBox>

        <label for="membershipCode">Membership Code:</label>
        <asp:TextBox ID="membershipCode" runat="server"></asp:TextBox>

        <label for="registrationFee">Registration Fee:</label>
        <asp:TextBox ID="registrationFee" runat="server" required="true"></asp:TextBox>

        <label for="ceSessionsFee">CE Sessions Fee:</label>
        <asp:TextBox ID="ceSessionsFee" runat="server"></asp:TextBox>

        <label for="institutionalCode">Institutional Code:</label>
        <asp:TextBox ID="institutionalCode" runat="server"></asp:TextBox>

        <label for="firstConvention">First APA Convention:</label>
        <asp:CheckBox ID="firstConvention" runat="server" Text="Yes" />

        <label for="programsRequest">Programs Only Mailed Upon Request:</label>
        <asp:CheckBox ID="programsRequest" runat="server" Text="Request one here (US/Canada only)" />

        <label for="disability">Person With Disability:</label>
        <asp:TextBox ID="disability" runat="server"></asp:TextBox>

        <label for="earlyCareer">Early Career Psychologist:</label>
        <asp:CheckBox ID="earlyCareer" runat="server" Text="Yes" />

        <!-- Spouse/Dependent details -->
        <label for="familyMembers">Name(s) of Nonmember Nonpsychologist Spouse/Equivalent or Dependent(s) Under Age 18 requiring a badge (maximum of 4):</label>
        <asp:TextBox ID="spouse1Name" runat="server" MaxLength="50" placeholder="Name"></asp:TextBox>
        <asp:TextBox ID="spouse1Amount" runat="server" MaxLength="50" placeholder="Amount Due"></asp:TextBox>
        <!-- Repeat for other spouse/dependents if needed -->

        <label for="totalFees">Total Fees Due:</label>
        <asp:TextBox ID="totalFees" runat="server" required="true"></asp:TextBox>

        <label for="cardType">Card Type:</label>
        <asp:DropDownList ID="cardType" runat="server">
            <asp:ListItem>VISA</asp:ListItem>
            <asp:ListItem>MasterCard</asp:ListItem>
            <asp:ListItem>American Express</asp:ListItem>
        </asp:DropDownList>

        <label for="cardNumber">Credit Card Number:</label>
        <asp:TextBox ID="cardNumber" runat="server" required="true"></asp:TextBox>

        <label for="cardExpiry">Expiration Date:</label>
        <asp:TextBox ID="cardExpiry" runat="server" required="true"></asp:TextBox>

        <label for="cardHolderName">Name on Card:</label>
        <asp:TextBox ID="cardHolderName" runat="server" required="true"></asp:TextBox>

        <!-- Additional form fields -->

        <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="SubmitForm" />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 7: Happy Earwig</title>
    <link href="Styles/Main.css" rel="stylesheet"/>
    <link href="Styles/Request.css" rel="stylesheet" />
</head>
<body>
    <header>
        <asp:Image ID="imgMotel" runat="server" ImageUrl="~/Images/The_Happy_Earwig_Motel.png" BorderColor="White" BorderWidth="10px" ImageAlign="Left" />
        <h1>The Happy Earwig Motel</h1>
        <h2>Our crawl-space now body-free!</h2>
        <p><br/><br/></p>
    </header>
    <section>
        <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtArrivalDate">
            <h1>Reservation Request</h1>
            <asp:ValidationSummary ID="vsReservation" runat="server"  CssClass="validation" HeaderText="* means that the field is required"/>
            <h2>Request data</h2>
            <label class="label">Arrival</label>
            <asp:TextBox ID="txtArrivalDate" runat="server" TextMode="Date"></asp:TextBox>
            <asp:CompareValidator ID="cvArrival" runat="server" ControlToValidate="txtArrivalDate" Operator="DataTypeCheck" 
                Type="Date"></asp:CompareValidator>
            <br />
            <label class="label">Departure</label>
            <asp:TextBox ID="txtDepartureDate" runat="server" TextMode="Date"></asp:TextBox>
            <asp:CompareValidator ID="cvDeparture" runat="server" ControlToValidate="txtDepartureDate" Operator="GreaterThan" 
                Type="Date" ErrorMessage="Must be after arrival date"
                ControlToCompare="txtArrivalDate" CssClass="validation"></asp:CompareValidator>
            <br />
            <label class="label">Number of adults</label>
            <asp:DropDownList ID="ddlNoOfPeople" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList><br />          

            <label class="label">Bed type</label>
            <asp:RadioButton ID="rdoKing" runat="server" Text="King" GroupName="Bed" />
            <asp:RadioButton ID="rdoDouble" runat="server" Text="Two Queens" GroupName="Bed" />
            <asp:RadioButton ID="rdoSingle" runat="server" Text="One Queen" GroupName="Bed" /><br />

            <h2>Special requests</h2>
            <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="MultiLine"></asp:TextBox><br />
        
            <h2>Contact information</h2>
            <label class="label">First name</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" CssClass="validation" Display="Dynamic" 
                ControlToValidate="txtFirstName" Text="*"></asp:RequiredFieldValidator>
            <br />
            <label class="label">Last name</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" CssClass="validation" Display="Dynamic" 
                ControlToValidate="txtLastName" Text="*"></asp:RequiredFieldValidator>
            <br />
            <label class="label">Email address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="validation" Display="Dynamic" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Must be a valid email address</asp:RegularExpressionValidator>
            <br />
            <label class="label">Telephone number</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="entry"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
            <br />
            <label class="label">Preferred method</label>
            <asp:DropDownList ID="ddlPreferredMethod" runat="server">
                <asp:ListItem>Email</asp:ListItem>
                <asp:ListItem>Telephone</asp:ListItem>
            </asp:DropDownList><br />

            <label class="label">&nbsp;</label>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" CssClass="button" />&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" onclick="btnClear_Click" CssClass="button" CausesValidation="False" /><br />
            <p>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
    </form>
    </section>
    <footer>
        <p>&copy; 2015, Happy Earwig Motel</p>
    </footer>
</body>
</html>

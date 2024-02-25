<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <h1>Malayan Music Festival Registration</h1>
    <form runat="server">
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>

        <asp:TextBox ID="fname_TextBox" runat="server" PlaceHolder="First Name"></asp:TextBox>
        <br />
        <asp:TextBox ID="lname_TextBox" runat="server" PlaceHolder="Last Name"></asp:TextBox>
        <br />

        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>

        <asp:TextBox ID="age_TextBox" runat="server" TextMode="Number" placeholder="Age"></asp:TextBox>

        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>

        <br />

        <asp:DropDownList ID="ticketType_DropDownList" runat="server" AutoPostBack="true">
            <asp:ListItem   Text="Pick a Ticket"></asp:ListItem>
            <asp:ListItem Value="Starter" Text="Starter"></asp:ListItem>
            <asp:ListItem Value="General Admissions" Text="General Admissions"></asp:ListItem>
            <asp:ListItem Value="Gold" Text="Gold"></asp:ListItem>
            <asp:ListItem Value="VIP" Text="VIP"></asp:ListItem>
        </asp:DropDownList>
       
        <br /><br />

        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>

        <asp:RadioButtonList ID="dayAttend_RadioButtonList" runat="server">
            <asp:ListItem>Day 1</asp:ListItem>
            <asp:ListItem>Day 2</asp:ListItem>
            <asp:ListItem>Day 1 & 2</asp:ListItem>
        </asp:RadioButtonList>

        <br />

        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>

        <asp:CheckBoxList ID="FavArtist_CheckBoxList"
        AutoPostBack="True"
        CellPadding="5"
        CellSpacing="5"
        RepeatColumns="1"
        RepeatDirection="Vertical"
        RepeatLayout="Flow"
        TextAlign="Left"
        runat="server">
            <asp:ListItem>ZaQ - </asp:ListItem>
            <asp:ListItem>Minami - </asp:ListItem>
            <asp:ListItem>Kotoko - </asp:ListItem>
        </asp:CheckBoxList>

        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>

        <div>
            <h3> File Upload:</h3>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif"/>
            <br /><br />
            <asp:Button ID="buttonSave" runat="server" onclick="buttonSave_Click"  Text="Save" style="width:85px" />
            <br /><br />
            <asp:Label ID="labelMessage" runat="server" />
        </div>

    </form>
</body>
</html>

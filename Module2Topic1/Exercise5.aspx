<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" MasterPageFile="~/Exercise5.Master" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>


<asp:Content ID="myReflection" ContentPlaceHolderID="reflection" runat="server">


    <div>

        <h4>How would you compare plain HTML to ASP.NET WebForms</h4>

        <p>
            Both HTML and ASP.NET Webforms are used to create web applications, yet they have distinct functionalities.
            <br />
            HTML is designed for crafting the structure of the user interface, while ASP.NET WebForms are tailored for facilitating communication with the server via user interaction. 
            <br />
            HTML is more oriented towards the local storage, which limits its capabilities, unlike ASP.NET Webforms where it utilizes a server-side database to store and manage data. 
            <br />
            This allows it to be used accross various devices withing the same server.
        </p><br />
        
    </div>

    <div>

        <h4>The code behind (C#) and JavaScript seem to share many use cases.  <br />
        When should you implement logic in the code behind and when should you implement logic in JavaScript Provide examples.  <br /></h4>

        <p>
            To put it simply, C# is used for backend and JavaScript is used for the front end.
            <br /> 
            If one were to require authentication and authorization for each user, using C# as a backend is the way to go.
            As these logics that are recommended to have a database to store its data.
            <br />
            Meanwhile, if one want to create an interactive UI that changes based on user input but not necessarily have any data being stored or retrived,
            using JavaScript as the frontend is more appropriate.
        </p><br />

    </div>

    <div>

        <h4>Explain what post backs are.</h4>

        <p>
            Postbacks, basing on their name, initiates by waiting for user interaction (post) and use that to submit to the server for processing.
            <br />
            After processing, the server returns information back to the web application as feedback for the user. 
            <br />
            This interaction can be trigged by various user inputs, such as a button click, a drop down list selection, and etc.
        </p><br />

    </div>
    

</asp:Content>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>
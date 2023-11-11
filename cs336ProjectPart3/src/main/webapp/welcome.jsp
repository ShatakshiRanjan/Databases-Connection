<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
</head>
<body>

<%
    // Retrieve the username from the session
    String username = (String) session.getAttribute("username");

    // Check if the user is logged in
    if (username != null && !username.isEmpty()) {
%>

    <h2>Welcome</h2>
    <p>You're in!</p>

    <!-- Logout Form -->
    <form action="logout.jsp" method="post">
        <input type="submit" value="Logout">
    </form>

<%
    } else {
        // If the user is not logged in, redirect to the login page
        response.sendRedirect("login.jsp");
    }
%>

</body>
</html>
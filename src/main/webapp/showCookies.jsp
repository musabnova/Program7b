<%@ page import="javax.servlet.http.*" %>
<html>
<head>
    <title>Active Cookies</title>
</head>
<body>

<h2>Active Cookie List</h2>

<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie c : cookies) {
%>
            <p>
                Name: <%= c.getName() %> <br>
                Value: <%= c.getValue() %> <br>
                Domain: <%= c.getDomain() %>
            </p>
            <hr>
<%
        }
    } else {
%>
    <p>No cookies found</p>
<%
    }
%>

</body>
</html>
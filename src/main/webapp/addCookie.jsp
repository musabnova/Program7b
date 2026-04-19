<%@ page import="javax.servlet.http.*" %>
<html>
<head>
    <title>Cookie Added</title>
</head>
<body>

<%
    String name = request.getParameter("cname");
    String domain = request.getParameter("cdomain");
    int age = Integer.parseInt(request.getParameter("cage"));

    // Create Cookie
    Cookie cookie = new Cookie(name, "Active");
    cookie.setMaxAge(age);
    cookie.setDomain(domain);

    response.addCookie(cookie);
%>

<h2>Cookie Created Successfully!</h2>

<p><b>Name:</b> <%= name %></p>
<p><b>Domain:</b> <%= domain %></p>
<p><b>Expiry (sec):</b> <%= age %></p>

<br>
<a href="showCookies.jsp">Go to Active Cookie List</a>

</body>
</html>

<%
    request.getSession().setAttribute("Web", "Error");
    response.sendRedirect("index.jsp");
%>

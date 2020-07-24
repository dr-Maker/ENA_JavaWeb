<%
    
    // Si intenta ingresar sin log
    if(request.getSession().getAttribute("web") == null)
    {
        response.sendRedirect("index.jsp");
    }
    else
    {
        // Si al haber entrado y estuvo exitoso pero cerro Sesión
        String s = (String)request.getSession().getAttribute("web");
        
        
        if(!s.equals("Ok"))
        {
            response.sendRedirect("index.jsp");
        }
    }
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Men&uacute; Principal</title>
    </head>
    <body>
        
        <p>
             Bienvenido <%=request.getSession().getAttribute("usuario") %> tipo <%=request.getSession().getAttribute("rol") %>
             <button> <a href="CerrarSesion.jsp">Cerrar sesi&oacute;n</a></button>
        </p>
        <h1>Men&uacute; Principal</h1>
        
        <button> <a href="IngresarRequerimiento.jsp"> Ingresar Requerimiento</a></button> <br>
        <button> <a href="ConsultarRequerimientos.jsp"> Consultar Requerimientos</a></button><br>
        <button> <a href="CerrarRequerimientos.jsp"> Cerrar Requerimiento</a></button>

    </body>
</html>

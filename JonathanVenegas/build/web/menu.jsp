
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
        </p>
        <h1>Men&uacute; Principal</h1>
        
        <button> <a href="IngresarRequerimiento.jsp"> Ingresar Requerimiento</a></button> <br>
        <button> <a href="ConsultarRequerimientos.jsp"> Consultar Requerimientos</a></button><br>
        <button> <a href="CerrarRequerimientos.jsp"> Cerrar Requerimiento</a></button>

    </body>
</html>

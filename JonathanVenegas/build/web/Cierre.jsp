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

<%@page import="modelos.dao.RequerimientoDao"%>
<%
    int id_requerimiento = Integer.parseInt(request.getParameter("code"));
    
    RequerimientoDao dao = new RequerimientoDao();
    boolean estado_ciere =  dao.CerrarRequerimiento(id_requerimiento);
    

    if(estado_ciere)
    {
          response.sendRedirect("CerrarRequerimientos.jsp");
    }
    else
    {
%>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cierre Requerimiento</title>
    </head>
    <body>
        
        <h2>Hubo un problema en el cierre del Requermiento </h2>
        <a href="CerrarRequerimientos.jsp">volver</a>
    </body>
<%            
    }
%>

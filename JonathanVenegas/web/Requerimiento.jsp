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

<%@page import="modelos.vo.Requerimiento"%>
<%@page import="modelos.dao.RequerimientoDao"%>
<%

    
        int id_gerencia = Integer.parseInt(request.getParameter("gerencia")); 
        String gerencia = "";
        int id_depto = Integer.parseInt(request.getParameter("dpto")); 
        String depto = "";
        int id_area = Integer.parseInt(request.getParameter("asignado")); 
        String area = "";
        int id_encargado = Integer.parseInt(request.getParameter("encargado")); 
        String emp_nombre = "";
        String emp_appaterno = "";
        String emp_apmaterno = "";
        String requerimiento = request.getParameter("requerimiento"); 
        
        int id_requerimiento = 0;
        int estado = 0;
        String fecha = "hoy";
        
        RequerimientoDao dao = new RequerimientoDao();
        Requerimiento obj = new Requerimiento(id_requerimiento, id_gerencia, gerencia, id_depto, depto, id_area, area, id_encargado, emp_nombre, emp_appaterno, emp_apmaterno, estado, requerimiento, fecha);
        boolean realiado = dao.InsertarRequerimiento(obj); 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Requerimiento</title>
    </head>
    <body>
 <%        
        if(realiado)
        {
 %>
        <h2>Requerimiento realizado Correctamente.</h2>
 <%
        }
        else
        {
  %>
        <h2>No fue posible generar el registro del Requerimiento.</h2>
 <% 
        }
 %>
 
         <a href="menu.jsp">volver</a>
    </body>
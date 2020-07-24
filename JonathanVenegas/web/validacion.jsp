
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="modelos.vo.Usuario"%>
<%@page import="modelos.dao.UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida</title>
    </head>
    <body>
        
        
         <%
            
                String User = request.getParameter("usuario");
                String Pass = request.getParameter("clave");
                String Rol = "";
  
                
                UsuarioDao dao = new UsuarioDao();
                List<Usuario> lista = dao.valida(new Usuario(1, User, Pass, 0, "", 0));
                if(lista.size() > 0)
                {
                    for(Usuario item: lista)
                    {
                       Rol = item.getRol();
                    }
                  
                  request.getSession().setAttribute("web", "Ok");
                  request.getSession().setAttribute("usuario", User);
                  request.getSession().setAttribute("rol", Rol);
                  
                  response.sendRedirect("menu.jsp");
                  
        
         %>   
                  
        
                <h1> Puede Ingresar </h1>
        <%
                }
                else
                {   
                     request.getSession().setAttribute("web", "Error");

        %>
        
                <h1> Error de Acceso </h1>
        <%
                
                }                
                  
        %>

            
        
             <a href="index.jsp">Volver a iniciar</a>
    </body>
</html>

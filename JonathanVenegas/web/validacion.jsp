
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="modelos.vo.Usuario"%>
<%@page import="modelos.dao.UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="Css/bootstrap.css" rel="stylesheet" type="text/css"/>
                 <link href="Css/estilo.css" rel="stylesheet" type="text/css"/>
                  <script src="Js/icons.js" type="text/javascript"></script>
        <title>Valida</title>
    </head>
    <body>
        <div class="container">
         <%
            
                String User = request.getParameter("usuario");
                String Pass = request.getParameter("clave");
                String recordar = request.getParameter("recordar");
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
                    if(recordar != null)
                    {
                    Cookie cookie_user = new Cookie("log.c_user", User);
                    Cookie cookie_pass = new Cookie("log.pass", Pass);
                    cookie_user.setMaxAge(2*24*60*60); // duracion de la cokie 2 semanas 
                    cookie_pass.setMaxAge(2*24*60*60); 
                    response.addCookie(cookie_user);
                    response.addCookie(cookie_pass);
                    }else
                    {
                    Cookie cookie_user = new Cookie("log.c_user", User);
                    Cookie cookie_pass = new Cookie("log.pass", Pass);
                    cookie_user.setMaxAge(0); // duracion de la cokie 2 semanas 
                    cookie_pass.setMaxAge(0); 
                    response.addCookie(cookie_user);
                    response.addCookie(cookie_pass);
                    }
                  
                          
                  response.sendRedirect("menu.jsp");

         %>   
                  
        
         <h1 class="titulo"> Puede Ingresar </h1>

        <%
                }
                else
                {   
                     request.getSession().setAttribute("web", "Error");

        %>
        <div class="card card-header">
        <h1 class="titulo"><i class="fas fa-exclamation-triangle"></i> Error de Acceso </h1>
        </div>
        
        <p class="titulo">Usuario y/o clave incorrectos</p>
        <%
                
                }                
                  
        %>

            
            <div class="card card-header menu">
                 <a class="btn btn-primary" href="index.jsp">Volver a iniciar</a>
            </div>
        </div>
    </body>
</html>

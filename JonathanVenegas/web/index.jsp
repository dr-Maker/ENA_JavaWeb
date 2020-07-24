<%
    //Valor por defecto 
    
        String User = "";
        String Pass = "";
        Cookie[] logCookies = request.getCookies();
        
        if(logCookies!=null)
        {
            for(Cookie item_cookie: logCookies)
            {
                if("log.c_user".equals(item_cookie.getName()))
                {
                    User = item_cookie.getValue();
                }
                  if("log.pass".equals(item_cookie.getName()))
                {
                    Pass = item_cookie.getValue();
                }
            }
        }
     

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autentificaci&oacute;n</title>
    </head>
    <body>
        <h1>Autentificaci&oacute;n</h1>
        
        <form name="formLog" action="validacion.jsp" method="post">
            
            <label>Usuario</label> 
            <input type="text" placeholder="Usuario" name="usuario" value="<%=User%>" required> 
            <br>
            <label>Password</label> 
            <input type="password" placeholder="Password" name="clave" value="<%=Pass%>" required> 
            <br>
            <input name="recordar" type="checkbox" checked><label>Recordar</label> 
            <br>
            <input type="submit" value="Ingresar clave"> 
            
        </form>

   

            

        
        
    </body>
</html>

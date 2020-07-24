

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autentificaci&oacute;n</title>
    </head>
    <body>
        <h1>Autentificaci&oacute;n</h1>
        
        <form action="validacion.jsp" method="post">
            
            <label>Usuario</label> <input type="text" placeholder="Usuario" name="usuario" required> <br>
            <label>Password</label> <input type="password" placeholder="Password" name="clave" required> <br>
            <input type="checkbox"><label>Recordar</label> <br>
            <input type="submit" value="Ingresar clave"> 
            
        </form>

   

            

        
        
    </body>
</html>

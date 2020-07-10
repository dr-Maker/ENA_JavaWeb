

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Requerimiento</title>
    </head>
    <body>
        <h1>Ingresar Requerimiento</h1>
        
        <form>
            <label>Gerencia:</label> <select> <option>Seleccionar</option></select> <br>
            <label>Depto.:</label> <select> <option>Seleccionar</option></select> <br>
            <label>Asignar a:</label> <select> <option>Seleccionar</option></select> <br>
            <label>Encargado :</label> <select> <option>Seleccionar</option></select> <br>
            <label>Requerimiento :</label> <textarea>Ingrese descipción del requerimiento</textarea><br>
            <input type="submit"  value="Guardar">
            
        </form>
        
        <br>
        <button> <a href="menu.jsp">Volver a Men&uacute;</a></button>
    </body>
</html>

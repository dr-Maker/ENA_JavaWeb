<%@page import="modelos.dao.AreaDao"%>
<%@page import="modelos.vo.Area"%>
<%@page import="modelos.vo.Encargado"%>
<%@page import="modelos.dao.EncargadoDao"%>
<%@page import="modelos.vo.Depto"%>
<%@page import="modelos.dao.DeptoDao"%>
<%@page import="java.util.List"%>
<%@page import="modelos.dao.GerenciaDao"%>
<%@page import="modelos.vo.Gerencia"%>
<%    
      
    
    int Gerencia = 0 ;
    String Selec = "";
    String Selecion = "";
    int dpto = 0;
    int asignado = 0;
    int encargado = 0;
    
            if(request.getParameter("gerencia")!= null)
        {
           Gerencia =  Integer.parseInt(request.getParameter("gerencia"));
           dpto =  Integer.parseInt(request.getParameter("dpto"));
           asignado =  Integer.parseInt(request.getParameter("asignado"));
           encargado =  Integer.parseInt(request.getParameter("encargado")); 
        }
    
    GerenciaDao daoGerencias =  new GerenciaDao();
    List<Gerencia> listagerencias = daoGerencias.Listar();
    
    DeptoDao daoDeptos = new DeptoDao();
    List<Depto> listadeptos = daoDeptos.Listar(Gerencia);
    
    AreaDao daoAreas = new AreaDao();
    List<Area> listaareas = daoAreas.Listar();
    
    EncargadoDao daoEncargados = new EncargadoDao();
    List<Encargado> listaEncargados = daoEncargados.Listar(asignado);
   
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="Js/main.js" type="text/javascript"></script>
        <title>Ingresar Requerimiento</title>
    </head>
    <body>
        <h1>Ingresar Requerimiento</h1>      
        
        <form id="form" action="Requerimiento.jsp" method="post">
            <label>Gerencia:</label> 
            <select name="gerencia" onchange="goSubmit()"> 
                
                <option value="0" >Seleccionar</option>
            <%
                    for(Gerencia item: listagerencias)
                    {
                        if(Gerencia == item.getId_gerencia())
                        {
                            Selec = "selected" ;
                        }
                        else
                        {
                            Selec = "";
                        }
            %>
                <option <%= Selec %> value="<%= item.getId_gerencia() %>"> <%= item.getNombre() %> </option>
            <%      
                    }
            %>
 
            </select> 
            
            <br>
            
            <label>Depto.:</label> 
            
            <select name="dpto" onchange="goSubmit()"> 
                
          
                    <option value="0">Seleccionar</option>
            <%
                    for(Depto item: listadeptos)
                    {
                        if(dpto == item.getId_depto())
                        {
                            Selec = "selected" ;
                        }
                        else
                        {
                            Selec = "";
                        }
            %>
                    <option <%= Selec %> value="<%= item.getId_depto() %>" > <%= item.getDepto() %> </option>
            <%
                        
                    }

            %>
          
             </select> 
            
            <br>
            
            <label>Asignar a:</label> 
            
            <select name="asignado" onchange="goSubmit()"> 
                <option value="0">Seleccionar</option>
            <%
                    for(Area item: listaareas)
                    {
                        if( asignado == item.getId_area() )
                        {
                            Selecion = "selected" ;
                        }
                        else
                        {
                            Selecion = "";
                        }
            %>
                    <option <%= Selecion %> value="<%= item.getId_area() %>" > <%= item.getArea() %> </option>
            <%
                    }
            %>
            </select> 
            <br>
            <label>Encargado :</label> 
            <select name="encargado" onchange="goSubmit()"> 
                <option value="0">Seleccionar</option>
                  <%
                    for(Encargado item: listaEncargados)
                    {
                        if( encargado == item.getId())
                        {
                            Selecion = "selected" ;
                        }
                        else
                        {
                            Selecion = "";
                        }
            %>
                    <option <%= Selecion %> value="<%= item.getId() %>" > <%= item.getNombre()+" "+item.getPaterno()  %> </option>
            <%
                    }
            %>
                
            </select> <br>
            <label>Requerimiento :</label> 
            <textarea required name="requerimiento" placeholder="Ingrese descipción del requerimiento"></textarea><br>
            <input type="submit" value="Guardar">
            
        </form>
        
        <br>
        <button> <a href="menu.jsp">Volver a Men&uacute;</a></button>
    </body>
</html>

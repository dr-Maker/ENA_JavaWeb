<%@page import="modelos.dao.AreaDao"%>
<%@page import="modelos.vo.Area"%>
<%@page import="modelos.vo.Depto"%>
<%@page import="modelos.dao.DeptoDao"%>
<%@page import="modelos.vo.Gerencia"%>
<%@page import="modelos.dao.GerenciaDao"%>
<%@page import="modelos.vo.Requerimiento"%>
<%@page import="java.util.List"%>
<%@page import="modelos.dao.RequerimientoDao"%>
<%
    RequerimientoDao dao = new RequerimientoDao();
  
       
       int gerencia =0;
       int dpto = 0;
       int asignar = 0;
       String Selec = "";
       String Buscar = "";
       
       if(request.getParameter("gerencia")!= null)
       {
         gerencia= Integer.parseInt(request.getParameter("gerencia"));
       } 
       if(request.getParameter("dpto")!= null)
       {
         dpto =  Integer.parseInt(request.getParameter("dpto"));
       }
       if(request.getParameter("asignar")!= null)
       {
         asignar =  Integer.parseInt(request.getParameter("asignar"));
         
       }
       
        if(request.getParameter("buscar")!= null)
       {
         Buscar =  request.getParameter("buscar");
       }
      
       GerenciaDao daoGerencias =  new GerenciaDao();
       List<Gerencia> listagerencias = daoGerencias.Listar();

       DeptoDao daoDeptos = new DeptoDao();
       List<Depto> listadeptos = daoDeptos.Listar(gerencia);

       AreaDao daoAreas = new AreaDao();
       List<Area> listaAsignar = daoAreas.Listar();
    
       List<Requerimiento> listaRequerimientos = dao.Listar(gerencia,dpto,asignar,Buscar);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="Js/main.js" type="text/javascript"></script>
        <title>Consultar Requerimientos</title>
    </head>
    <body>
        <h1>Consultar Requerimientos</h1>
        <br>
        
        <form id="formConsulta" action="ConsultarRequerimientos.jsp">
            
            <label>Gerencia:</label>
            <select name="gerencia" onchange="goConsulta()" >  
                <option value="0">Todos</option>
            <%
                for(Gerencia item: listagerencias)
                {
                    if(gerencia == item.getId_gerencia())
                        {
                            Selec = "selected" ;
                        }
                        else
                        {
                            Selec = "";
                        }
                %>
                <option <%= Selec %> value="<%= item.getId_gerencia() %>" ><%= item.getNombre() %></option>
                <%
                }
            %>
            
            </select>
            <br>
            
            <label>Depto.:</label>
            <select name="dpto" onchange="goConsulta()"> 
                <option value="0"> Todos </option>
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
                <option <%= Selec %> value="<%= item.getId_depto() %>"> <%= item.getDepto()%> </option>
                <%
                }
                %>
            </select>
            
            <br>
            
            <label>Asignar a:</label> 
            <select name="asignar" onchange="goConsulta()">
                <option value="0">Todos</option>
                <%
                for(Area item: listaAsignar)
                {
                      if(asignar == item.getId_area())
                        {
                            Selec = "selected" ;
                        }
                        else
                        {
                            Selec = "";
                        }    
                %>
                <option <%= Selec %> value="<%= item.getId_area()%>" ><%= item.getArea()%></option>
                <%
                }
            %>
            </select> 
            
            <input name="buscar" type="text" value="" placeholder="Buscar">
        </form>
        
            <table>
                <thead>
                    <tr>
                        <th>Gerencia</th> 
                        <th>Depto.</th> 
                        <th>Asignado a </th> 
                        <th>Reqierimiento</th> 
                    </tr>
                 </thead>
                <tbody>
            <%
                    for(Requerimiento item: listaRequerimientos)
                    {
            %>            
                    <tr>
                        <td> <%= item.gerencia %></td>                 
                        <td> <%= item.depto %></td>                 
                        <td> <%= item.area %></td>                 
                        <td> <%= item.requerimiento %></td>                 
                    </tr>
                        
            <%            
                    }
            %>
                </tbody>
          
            </table>

        <button> <a href="menu.jsp">Volver a Men&uacute;</a></button>
    </body>
</html>

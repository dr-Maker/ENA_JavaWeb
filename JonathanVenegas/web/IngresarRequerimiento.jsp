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
<%    
      
 
    int Gerencia = 0 ;
    String Selec = "";
    String Selecion = "";
    String disabled  = "disabled";
    int dpto = 0;
    int asignado = 0;
    int encargado = 0;
    
            if(request.getParameter("gerencia")!= null)
            {
             Gerencia =  Integer.parseInt(request.getParameter("gerencia"));
            }
            
            if(request.getParameter("dpto")!= null)
            {
                dpto =  Integer.parseInt(request.getParameter("dpto"));
            }
            
            if(request.getParameter("asignado")!= null)
            {
                 asignado =  Integer.parseInt(request.getParameter("asignado"));
            }
             
            if(request.getParameter("encargado")!= null)
            {
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
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Css/estilo.css" rel="stylesheet" type="text/css"/>
        <script src="Js/main.js" type="text/javascript"></script>
        <script src="Js/icons.js" type="text/javascript"></script>
        <title>Ingresar Requerimiento</title>
    </head>
    <body>
        
      
        <div class="container">
             <div class="card card-header">
                    <h1 class="titulo"><i class="fas fa-plus"></i> Ingresar Requerimiento</h1> 
             </div>
          
            <form id="form" action="Requerimiento.jsp" method="post">
                 <div class="fm_ing_req">
                    <label>Gerencia:</label> 
                    <select name="gerencia" onchange="goSubmit()" required> 

                        <option selected disabled value="0" >Seleccionar</option>
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
                    </div>
                 <div class="fm_ing_req">                  
                    <label>Depto.:</label> 

                    <select name="dpto" onchange="goSubmit()" required> 


                            <option selected disabled value="0">Seleccionar</option>
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
                </div>

                
                <div class="fm_ing_req">   
                    <label>Asignar a:</label> 

                    <select name="asignado" onchange="goSubmit()" required> 
                        <option selected disabled value="0">Seleccionar</option>
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
          
                    
                <div class="fm_ing_req">   
                <label>Encargado :</label> 
                    <select name="encargado" onchange="goSubmit()" required> 
                        <option selected disabled value="0">Seleccionar</option>
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

                    </select>
                </div>
                
                <div class="fm_ing_req">   
                    <label>Requerimiento :</label> 
                    <textarea required name="requerimiento" placeholder="Ingrese descipción del requerimiento" ></textarea>
                    <div class="btn_ingresar">  
                        <%
                            if(Gerencia != 0 & dpto !=0 & asignado != 0 & encargado != 0)
                            {
                                disabled = "";
                            }
                            else
                            {
                                disabled  = "disabled";
                            }
                           
    
                        %>
                        
                        <input <%=disabled%> class="btn btn-primary" type="submit" value="Guardar">
                    </div>
                </div>
            </form>
        </div>
        
        
             <div class="card card-header menu">
        
                <a class="btn btn-primary" href="menu.jsp">Volver a Men&uacute;</a>

            </div>
        </div>
    </body>
</html>


package modelos.dao;

import data.BaseDatos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.vo.Requerimiento;


public class RequerimientoDao 
{
    BaseDatos db = new BaseDatos();
    String sql;
    PreparedStatement stmt;
    ResultSet rs;
    
    Requerimiento obj;
    
    public boolean InsertarRequerimiento(Requerimiento obj)
    {
        boolean state =  false;
        
       try
       {
           db.Conectar();
           sql = "sp_insert_requerimiento ?, ? ,?, ?, ?";
           stmt = db.getConn().prepareStatement(sql);
           stmt.setInt(1, obj.getId_gerencia());
           stmt.setInt(2, obj.getId_depto());
           stmt.setInt(3, obj.getId_area());
           stmt.setInt(4, obj.getId_empleado());
           stmt.setString(5, obj.getRequerimiento());
           db.EjecutarAccion(stmt);
           db.Cerrar();
           
           state =  true;
       }
       catch(SQLException exe)
       {
           System.out.println(exe.getMessage());
       }
        
        return state;
    
    }
    
    
    public List Listar(int gerencia_id, int dpto_id, int area_id, String buscar)
    {
       
        List<Requerimiento> lista = new ArrayList<>();
        
        try
        {
            db.Conectar();
            sql="sp_requerimientos ?, ? , ?, ?";
            stmt = db.getConn().prepareStatement(sql);
            stmt.setInt(1, gerencia_id);
            stmt.setInt(2, dpto_id);
            stmt.setInt(3, area_id);
            stmt.setString(4, buscar);
            rs = db.EjecutarConsulta(stmt);
            while(rs.next())           
            {

                    int id_requerimiento = rs.getInt("id_requerimiento");
                    int id_gerencia = rs.getInt("id_gerencia");
                    String gerencia = rs.getString("gerencia");
                    int id_depto = rs.getInt("id_depto");
                    String depto = rs.getString("depto");
                    int id_area = rs.getInt("id_area");
                    String area = rs.getString("area");
                    int id_empleado = rs.getInt("id_encargado");
                    String emp_nombre = rs.getString("nombre");
                    String emp_paterno = rs.getString("paterno");
                    String emp_materno = rs.getString("materno");
                    int estado = rs.getInt("estado");
                    String requerimiento = rs.getString("requerimiento");
                    String fecha = rs.getString("fecha");
                    
                    lista.add(new Requerimiento(id_requerimiento, id_gerencia, gerencia, id_depto, depto, id_area, area, id_empleado, emp_nombre, emp_paterno, emp_materno, estado, requerimiento, fecha));
            }
            db.Cerrar();
        }
        catch(SQLException exe)
        {
            System.out.println(exe.getMessage());
        }
        
        return lista;
    }

    
    public boolean CerrarRequerimiento(int id_requerimiento)
    {
        boolean estado = false;
        
        try
        {
            db.Conectar();
            sql = "sp_cerrar_requerimiento ?";
            stmt = db.getConn().prepareStatement(sql);
            stmt.setInt(1, id_requerimiento);            
            db.EjecutarAccion(stmt);
            db.Cerrar();
            estado = true;
        }
        catch(SQLException exe)
        {
            System.out.println(exe.getMessage());
        }
               
        return estado;
    }

    
}


package modelos.dao;

import data.BaseDatos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.vo.Depto;


public class DeptoDao 
{
    
        BaseDatos db = new BaseDatos();
        String sql;
        PreparedStatement stmt;
        ResultSet rs;
        Depto obj;
        
        
        public List<Depto> Listar(int id)
        {
        List<Depto> lista = new ArrayList<Depto>();
        
        try
        {
            db.Conectar();
            sql = "sp_lista_dpto ?";
            stmt = db.getConn().prepareStatement(sql);
            stmt.setInt(1, id);
            rs = db.EjecutarConsulta(stmt);
            while(rs.next())
            {
                    int id_depto = rs.getInt("id") ;
                    String depto = rs.getString("nombre");
                    int estado = rs.getInt("estado");
                    int gerencia_id = rs.getInt("gerencia");
                    
                    lista.add(new Depto(id_depto, depto, estado, gerencia_id));      
            }

            db.Cerrar();
        }
        catch(SQLException exe)
        {
            System.out.println(exe.getMessage());
        }
        
        return lista;
       
        }   
        
        
         public List<Depto> ListarAsignar()
        {
        List<Depto> lista = new ArrayList<Depto>();
        
        try
        {
            db.Conectar();
            sql = "sp_lista_dpto_asignar";
            stmt = db.getConn().prepareStatement(sql);
            rs = db.EjecutarConsulta(stmt);
            while(rs.next())
            {
             
                    int id_depto = rs.getInt("id") ;
                    String depto = rs.getString("nombre");
                    int estado = rs.getInt("estado");
                    int gerencia_id = rs.getInt("gerencia");
                    
                    lista.add(new Depto(id_depto, depto, estado, gerencia_id));      
            }

            db.Cerrar();
        }
        catch(SQLException exe)
        {
            System.out.println(exe.getMessage());
        }
        
        return lista;
       
        } 
}

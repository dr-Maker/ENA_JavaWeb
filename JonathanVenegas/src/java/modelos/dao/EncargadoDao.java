
package modelos.dao;

import data.BaseDatos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.vo.Encargado;


public class EncargadoDao 
{
    
        BaseDatos db = new BaseDatos();
        String sql;
        PreparedStatement stmt;
        ResultSet rs;
        Encargado obj;
    
        public List<Encargado> Listar(int id)
        {
            List<Encargado> lista = new ArrayList<Encargado>();
            
            try
            {
                db.Conectar();
                sql = "sp_lista_encargado ?";
                stmt = db.getConn().prepareStatement(sql);
                stmt.setInt(1, id);
                rs = db.EjecutarConsulta(stmt);
                while(rs.next())
                {
                      int id_encargado = rs.getInt("id");
                      String nombre = rs.getString("nombre");
                      String paterno = rs.getString("paterno");
                      String materno = rs.getString("materno");
                      String correo = rs.getString("correo");
                      int estado = rs.getInt("estado");
                      int id_area = rs.getInt("id_area");
                      
                      lista.add(new Encargado(id_encargado, nombre, paterno, materno, correo, estado, id_area));
                }
                
                db.Cerrar();
            }
            catch(SQLException exe)
            {
                System.out.println(exe.getMessage());
            }
            
            
            return lista;
        }
    
    /*       
                    int id_depto = rs.getInt("id") ;
                    String depto = rs.getString("nombre");
                    int estado = rs.getInt("estado");
                    int gerencia_id = rs.getInt("gerencia");
                    
                    lista.add(new Depto(id_depto, depto, estado, gerencia_id));      
            
    */
}

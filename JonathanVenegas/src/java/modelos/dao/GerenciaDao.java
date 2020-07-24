
package modelos.dao;

import data.BaseDatos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.vo.Gerencia;

public class GerenciaDao 
{
    
        BaseDatos db = new BaseDatos();
        String sql;
        PreparedStatement stmt;
        ResultSet rs;
        Gerencia obj;
        
        
        public List<Gerencia> Listar()
        {
            List<Gerencia> lista = new ArrayList<Gerencia>();
            
            try
            {
                db.Conectar();
                sql = "sp_lista_gerencia";
                stmt = db.getConn().prepareStatement(sql);
                rs = db.EjecutarConsulta(stmt);
                while(rs.next())
                {
                        int id_gerencia = rs.getInt("id");
                        String nombre = rs.getString("nombre");
                        int estado = rs.getInt("estado");
                
                        lista.add(new Gerencia(id_gerencia, nombre, estado));
                }
                
                db.Cerrar();
                
            }catch(SQLException exe)
            {
                System.out.println(exe.getMessage());
            }
            
            
            return lista;
        }        
        


    public GerenciaDao() {
    }
    
}

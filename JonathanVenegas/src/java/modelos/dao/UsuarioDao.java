
package modelos.dao;

import data.BaseDatos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.vo.Usuario;


public class UsuarioDao 
{
    
    BaseDatos db = new BaseDatos();
    String sql;
    PreparedStatement stmt;
    ResultSet rs;
    Usuario obj;
    
    
    
    public List valida(Usuario obj)
    {
        List<Usuario> lista = new ArrayList<>();
        try
        {
            db.Conectar();
            sql = "sp_valida ?, ?";
            stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, obj.getUser());
            stmt.setString(2, obj.getPass());
            rs = db.EjecutarConsulta(stmt);
            while(rs.next())
            {
                
                int id =rs.getInt("id");
                String usuario = rs.getString("usuario");
                String pass = "*****";
                int id_rol = rs.getInt("id_rol");
                String rol = rs.getString("tipo");
                int estado = rs.getInt("estado");

                lista.add(new Usuario(id, usuario, pass, id_rol, rol, estado));
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

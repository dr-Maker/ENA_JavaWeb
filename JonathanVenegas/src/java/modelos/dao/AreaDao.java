
package modelos.dao;

import data.BaseDatos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.vo.Area;


public class AreaDao 
{
    
        BaseDatos db = new BaseDatos();
        String sql;
        PreparedStatement stmt;
        ResultSet rs;
        Area obj;
        
        
        public List<Area> Listar()
        {
        List<Area> listar = new ArrayList<Area>();
        
        try
        {
            db.Conectar();
            sql = "select * from tb_area";
            stmt = db.getConn().prepareStatement(sql);
            rs = db.EjecutarConsulta(stmt);
            while(rs.next())
            {
            
                  int id_area = rs.getInt("id_area") ;
                  String area = rs.getString("area");
                  int d_status = rs.getInt("d_status");
                                   
                  listar.add(new Area(id_area, area, d_status));    
            }
            db.Cerrar();
        }
        catch(SQLException exe)
        {
            System.out.println(exe.getLocalizedMessage());
        }
        
        return listar;
        }
    
}

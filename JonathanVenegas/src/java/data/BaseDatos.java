package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDatos 
{

    Connection conn = null;
    ResultSet rs = null;

    String server;
    String basedato;
    String usuario;
    String clave;

    public BaseDatos() 
    {
        this.server = "localhost";
        this.basedato = "Requerimiento";
        this.usuario = "admin";
        this.clave = "sql";
    }

    public void Conectar() 
    {
        try 
        {
            // definimos la clase a utiliaxzar
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            // definimos string de coneccion
            String connURL = "jdbc:sqlserver://" + this.server + ";"
                    + "databaseName=" + this.basedato + ";"
                    + "user=" + this.usuario + ";"
                    + "password=" + this.clave + ";";

            // obtener la conexion a sql server
            this.conn = DriverManager.getConnection(connURL);
        } 
        catch (ClassNotFoundException | SQLException exe) 
        {
            // mostrar el mensaje con el error
            System.out.println(exe.getMessage());
        }
    }

    public void Cerrar() throws SQLException 
    {
        this.conn.close();
    }

    public ResultSet EjecutarConsulta(PreparedStatement stmt) throws SQLException 
    {
        // querys con respuesta de tuplas - select
        this.rs = stmt.executeQuery();
        return this.rs;
    }

    public void EjecutarAccion(PreparedStatement stmt) throws SQLException 
    {
        // querys sin respuesta - insert - update - delete
        stmt.executeUpdate();
    }

    public Connection getConn() 
    {
        return this.conn;
    }

}

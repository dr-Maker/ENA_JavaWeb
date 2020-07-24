
package modelos.vo;


public class Encargado 
{
    
    private int id;
    private String nombre;
    private String paterno;
    private String materno;
    private String correo;
    private int estado;
    private int id_dpto;

    public Encargado() 
    {
    }

    public Encargado(int id, String nombre, String paterno, String materno, String correo, int estado, int id_dpto) 
    {
        this.id = id;
        this.nombre = nombre;
        this.paterno = paterno;
        this.materno = materno;
        this.correo = correo;
        this.estado = estado;
        this.id_dpto = id_dpto;
    }

    public int getId() 
    {
        return id;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public String getNombre() 
    {
        return nombre;
    }

    public void setNombre(String nombre) 
    {
        this.nombre = nombre;
    }

    public String getPaterno() 
    {
        return paterno;
    }

    public void setPaterno(String paterno) 
    {
        this.paterno = paterno;
    }

    public String getMaterno() 
    {
        return materno;
    }

    public void setMaterno(String materno) 
    {
        this.materno = materno;
    }

    public String getCorreo() 
    {
        return correo;
    }

    public void setCorreo(String correo) 
    {
        this.correo = correo;
    }

    public int getEstado() 
    {
        return estado;
    }

    public void setEstado(int estado) 
    {
        this.estado = estado;
    }

    public int getId_dpto() 
    {
        return id_dpto;
    }

    public void setId_dpto(int id_dpto) 
    {
        this.id_dpto = id_dpto;
    }
    
    
    
    
    
    
    
    
}

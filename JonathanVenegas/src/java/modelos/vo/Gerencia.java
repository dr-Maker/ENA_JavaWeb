
package modelos.vo;


public class Gerencia 
{
    private int id_gerencia;
    private String nombre;
    private int estado;

    public Gerencia() 
    {
    }

    public Gerencia(int id_gerencia, String nombre, int estado) 
    {
        this.id_gerencia = id_gerencia;
        this.nombre = nombre;
        this.estado = estado;
    }



    public int getId_gerencia() 
    {
        return id_gerencia;
    }

    public void setId_gerencia(int id_gerencia) 
    {
        this.id_gerencia = id_gerencia;
    }

    public String getNombre() 
    {
        return nombre;
    }

    public void setNombre(String nombre) 
    {
        this.nombre = nombre;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) 
    {
        this.estado = estado;
    }
    
    
  
}

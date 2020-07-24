
package modelos.vo;

public class Depto 
{
    
    private int id_depto;
    private String depto;
    private int estado;
    private int id_gerencia;

    public Depto() 
    {
    }

    public Depto(int id_depto, String depto, int estado, int id_gerencia) 
    {
        this.id_depto = id_depto;
        this.depto = depto;
        this.estado = estado;
        this.id_gerencia = id_gerencia;
    }

    public int getId_depto() 
    {
        return id_depto;
    }

    public void setId_depto(int id_depto) 
    {
        this.id_depto = id_depto;
    }

    public String getDepto() 
    {
        return depto;
    }

    public void setDepto(String depto) 
    {
        this.depto = depto;
    }

    public int getEstado() 
    {
        return estado;
    }

    public void setEstado(int estado) 
    {
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

    
}

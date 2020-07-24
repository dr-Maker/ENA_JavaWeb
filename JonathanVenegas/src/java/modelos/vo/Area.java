
package modelos.vo;

public class Area 
{
    private int id_area;
    private String area;
    private int estado;

    public Area() 
    {
    }

    public Area(int id_area, String area, int estado) 
    {
        this.id_area = id_area;
        this.area = area;
        this.estado = estado;
    }

    public int getId_area() 
    {
        return id_area;
    }

    public void setId_area(int id_area) 
    {
        this.id_area = id_area;
    }

    public String getArea() 
    {
        return area;
    }

    public void setArea(String area) 
    {
        this.area = area;
    }

    public int getEstado() 
    {
        return estado;
    }

    public void setEstado(int estado) 
    {
        this.estado = estado;
    }
    
    
    
    
    
    
}

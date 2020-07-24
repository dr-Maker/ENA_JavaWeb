
package modelos.vo;


public class Usuario 
{
 
    private int id_user;
    private String user;
    private String pass;
    private int id_rol;
    private String rol;
    private int status;

    
    
    public Usuario() 
    {
    }

    public Usuario(int id_user, String user, String pass, int id_rol, String rol, int status) 
    {
        this.id_user = id_user;
        this.user = user;
        this.pass = pass;
        this.id_rol = id_rol;
        this.rol = rol;
        this.status = status;
    }

    public int getId_user() 
    {
        return id_user;
    }

    public void setId_user(int id_user) 
    {
        this.id_user = id_user;
    }

    public String getUser() 
    {
        return user;
    }

    public void setUser(String user) 
    {
        this.user = user;
    }

    public String getPass() 
    {
        return pass;
    }

    public void setPass(String pass) 
    {
        this.pass = pass;
    }

    public int getId_rol() 
    {
        return id_rol;
    }

    public void setId_rol(int id_rol) 
    {
        this.id_rol = id_rol;
    }

    public String getRol() 
    {
        return rol;
    }

    public void setRol(String rol) 
    {
        this.rol = rol;
    }

    public int getStatus() 
    {
        return status;
    }

    public void setStatus(int status) 
    {
        this.status = status;
    }
    
    
    
    
    
    
    
    
   
   
    
    
    
}

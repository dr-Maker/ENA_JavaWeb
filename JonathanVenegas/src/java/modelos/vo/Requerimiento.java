
package modelos.vo;


public class Requerimiento 
{
    public int id_requerimiento;
    public int id_gerencia;
    public String gerencia;
    public int id_depto;
    public String depto;
    public int id_area;
    public String area;
    public int id_empleado;
    public String emp_nombre;
    public String emp_appaterno;
    public String emp_apmaterno;
    public int estado;
    public String requerimiento;
    public String fecha;

    public Requerimiento() 
    {
    }

    public Requerimiento(int id_requerimiento, int id_gerencia, String gerencia, int id_depto, String depto, int id_area, String area, int id_empleado, String emp_nombre, String emp_appaterno, String emp_apmaterno, int estado, String requerimiento, String fecha) {
        this.id_requerimiento = id_requerimiento;
        this.id_gerencia = id_gerencia;
        this.gerencia = gerencia;
        this.id_depto = id_depto;
        this.depto = depto;
        this.id_area = id_area;
        this.area = area;
        this.id_empleado = id_empleado;
        this.emp_nombre = emp_nombre;
        this.emp_appaterno = emp_appaterno;
        this.emp_apmaterno = emp_apmaterno;
        this.estado = estado;
        this.requerimiento = requerimiento;
        this.fecha = fecha;
    }

    public int getId_requerimiento() {
        return id_requerimiento;
    }

    public void setId_requerimiento(int id_requerimiento) {
        this.id_requerimiento = id_requerimiento;
    }

    public int getId_gerencia() {
        return id_gerencia;
    }

    public void setId_gerencia(int id_gerencia) {
        this.id_gerencia = id_gerencia;
    }

    public String getGerencia() {
        return gerencia;
    }

    public void setGerencia(String gerencia) {
        this.gerencia = gerencia;
    }

    public int getId_depto() {
        return id_depto;
    }

    public void setId_depto(int id_depto) {
        this.id_depto = id_depto;
    }

    public String getDepto() {
        return depto;
    }

    public void setDepto(String depto) {
        this.depto = depto;
    }

    public int getId_area() {
        return id_area;
    }

    public void setId_area(int id_area) {
        this.id_area = id_area;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public int getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
    }

    public String getEmp_nombre() {
        return emp_nombre;
    }

    public void setEmp_nombre(String emp_nombre) {
        this.emp_nombre = emp_nombre;
    }

    public String getEmp_appaterno() {
        return emp_appaterno;
    }

    public void setEmp_appaterno(String emp_appaterno) {
        this.emp_appaterno = emp_appaterno;
    }

    public String getEmp_apmaterno() {
        return emp_apmaterno;
    }

    public void setEmp_apmaterno(String emp_apmaterno) {
        this.emp_apmaterno = emp_apmaterno;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getRequerimiento() {
        return requerimiento;
    }

    public void setRequerimiento(String requerimiento) {
        this.requerimiento = requerimiento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }



    

    
}

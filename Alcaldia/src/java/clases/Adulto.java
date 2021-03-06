package clases;

import java.util.ArrayList;

/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:42 p. m.
 */
public class Adulto extends Persona {

    private String cargo;
    private ArrayList<Empresa> empresa;
    private String jornada;
    private String sueldo;

    public Adulto(int codigo, int documento, String fNacimiento, String lugar, String nombre, String cargo, String jornada, String sueldo) {
        super(codigo, documento, fNacimiento, lugar, nombre);
        this.cargo = cargo;
        this.jornada = jornada;
        this.sueldo = sueldo;
        this.empresa = new ArrayList();
    }

    public ArrayList<Empresa> getEmpresa() {
        return empresa;
    }

    public void addEmpresa(Empresa p){
        this.empresa.add(p);
    }
    
    public String getCargo() {
        return cargo;
    }
    public String getJornada() {
        return jornada;
    }

    public String getSueldo() {
        return sueldo;
    }

    public void finalize() throws Throwable {
        super.finalize();
    }

    public String getDatos() {
        return "";
    }

    public boolean hasNext() {
        return false;
    }

    public Persona next() {
        return null;
    }

    /**
     *
     * @param p
     */
    public boolean remove(Persona p) {
        return false;
    }

    /**
     *
     * @param param
     */
    public void setDatos(String param) {

    }

}

package clases;

import java.util.Iterator;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:15 p. m.
 */
public abstract class Persona implements Iterator {

	private int codigo;
	private int documento;
	private String fNacimiento;
	private String lugar;
	private String nombre;

    public Persona(int codigo, int documento, String fNacimiento, String lugar, String nombre) {
        this.codigo = codigo;
        this.documento = documento;
        this.fNacimiento = fNacimiento;
        this.lugar = lugar;
        this.nombre = nombre;
    }

	

        @Override
	public void finalize() throws Throwable {

	}

	public String getDatos(){
		return "";
	}

        @Override
	public boolean hasNext(){
		return false;
	}

        @Override
	public Persona next(){
		return null;
	}

    public int getCodigo() {
        return codigo;
    }

    public int getDocumento() {
        return documento;
    }

    public String getfNacimiento() {
        return fNacimiento;
    }

    public String getLugar() {
        return lugar;
    }

    public String getNombre() {
        return nombre;
    }

        
	/**
	 * 
	 * @param p
     * @return 
	 */
	public boolean remove(Persona p){
		return false;
	}

	/**
	 * 
	 * @param param
	 */
	public void setDatos(String param){

	}

}
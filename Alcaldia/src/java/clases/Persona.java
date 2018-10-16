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

	public Persona(){

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
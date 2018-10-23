package clases;

import java.util.ArrayList;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:10 p. m.
 */
public class Menor extends Persona {

	private ArrayList<Enfermedad> enfermedades;
	private Guarderia guarderia;

    public Menor(int codigo, int documento, String fNacimiento, String lugar, String nombre,  Guarderia g) {
        super(codigo, documento, fNacimiento, lugar, nombre);
        this.enfermedades=new ArrayList<>();
        this.guarderia=g;
    }

    public void setGuarderia(Guarderia guarderia) {
        this.guarderia = guarderia;
    }

    public Guarderia getGuarderia() {
    
        return guarderia;
    }
    

	

	public void finalize() throws Throwable {
		super.finalize();
	}

	public String getDatos(){
		return "";
	}

	
	public boolean hasNext(){
		return false;
	}

	public Persona next(){
		return null;
	}

	/**
	 * 
	 * @param p
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

    public void addEnfermedad(Enfermedad temp) {
        this.enfermedades.add(temp);
    }

    public ArrayList<Enfermedad> getEnfermedades() {
        return enfermedades;
    }
    

	

}
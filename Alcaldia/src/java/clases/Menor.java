package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:10 p. m.
 */
public class Menor extends Persona {

	private Enfermedad enfermedades;
	private Guarderia guarderia;
	private Enfermedad m_Enfermedad;
	private Guarderia m_Guarderia;

	public Menor(){

	}

	public void finalize() throws Throwable {
		super.finalize();
	}

	public String getDatos(){
		return "";
	}

	public Enfermedad getEnfermedad(){
		return m_Enfermedad;
	}

	public Guarderia getGuarderia(){
		return m_Guarderia;
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

	/**
	 * 
	 * @param newVal
	 */
	public void setEnfermedad(Enfermedad newVal){
		m_Enfermedad = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setGuarderia(Guarderia newVal){
		m_Guarderia = newVal;
	}

}
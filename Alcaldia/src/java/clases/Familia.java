package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:58 p. m.
 */
public class Familia {

	private int codigo;
	private String direccion;
	private int ingFamiliar;
	private Persona personas;
	private int telefono;
	private String tHabitacion;
	private String tVivienda;
	private Persona m_Persona;

	public Familia(){

	}

	public void finalize() throws Throwable {

	}

	public String getDatos(){
		return "";
	}

	public Persona getPersona(){
		return m_Persona;
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
	public void setPersona(Persona newVal){
		m_Persona = newVal;
	}

}
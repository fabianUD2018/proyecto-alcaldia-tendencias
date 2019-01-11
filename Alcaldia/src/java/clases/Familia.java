package clases;

import java.util.ArrayList;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:58 p. m.
 */
public class Familia {

	private int codigo;
        private int barrio;
	private String direccion;
	private String ingFamiliar;
	private ArrayList<Persona> personas;
	private int telefono;
	private String tHabitacion;
	private String tVivienda;
	private Persona m_Persona;

    public Familia(int codigo, int barrio ,String direccion, String ingFamiliar, int telefono, String tHabitacion, String tVivienda, ArrayList<Persona> personas) {
        this.codigo = codigo;
        this.barrio = barrio;
        this.direccion = direccion;
        this.ingFamiliar = ingFamiliar;
        this.personas = personas;
        this.telefono = telefono;
        this.tHabitacion = tHabitacion;
        this.tVivienda = tVivienda;
        
        
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

    public int getCodigo() {
        return codigo;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getIngFamiliar() {
        return ingFamiliar;
    }

    public ArrayList<Persona> getPersonas() {
        return personas;
    }

    public int getTelefono() {
        return telefono;
    }

    public String gettHabitacion() {
        return tHabitacion;
    }

    public String gettVivienda() {
        return tVivienda;
    }

    public Persona getM_Persona() {
        return m_Persona;
    }

    public int getBarrio() {
        return barrio;
    }

    public void setBarrio(int barrio) {
        this.barrio = barrio;
    }
    
    

}
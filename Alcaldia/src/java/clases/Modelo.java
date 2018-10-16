package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:13 p. m.
 */
public class Modelo {

	private Barrio barrios[];
	private GestorBaseDatos db;
	private Familia familia[];
	private Institucion insti[];
	private Persona personas[];
	public Institucion m_Institucion;
	public Barrio m_Barrio;
	public Familia m_Familia;
	public Persona m_Persona;
	public GestorBaseDatos m_GestorBaseDatos;
	public Controlador m_Controlador;

	public Modelo(){

	}

        @Override
	public void finalize() throws Throwable {

	}

	public Barrio consultarBarrio(){
		return null;
	}

	private Familia consultarFamilia(){
		return null;
	}

	public Institucion consultarInstitucion(){
		return null;
	}

	public Persona consultarPersona(){
		return null;
	}

	/**
	 * 
	 * @param b
	 */
	public void crearBarrio(Barrio b){

	}

	/**
	 * 
	 * @param f
	 */
	public void crearFamilia(Familia f){

	}

	/**
	 * 
	 * @param i
	 */
	public void crearInstitucion(Institucion i){

	}

	/**
	 * 
	 * @param p
	 */
	public void crearPersona(Persona p){

	}

}
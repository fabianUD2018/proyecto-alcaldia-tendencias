package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:48 p. m.
 */
public class BEstratoInferior extends Barrio {

	private Rutas rutas;
	private Rutas m_Rutas;

	public BEstratoInferior(){

	}



	public String getDatos(){
		return "";
	}

	public Rutas getRutas(){
		return m_Rutas;
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
	public void setRutas(Rutas newVal){
		m_Rutas = newVal;
	}

}
package clases;




/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:50 p. m.
 */
public class BIndustrial extends Barrio {

	private Empresa empresas;
	private Institucion m_Institucion;

	public BIndustrial(){

	}

	public void finalize() throws Throwable {
		super.finalize();
	}

	public String getDatos(){
		return "";
	}

	public Institucion getInstitucion(){
		return m_Institucion;
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
	public void setInstitucion(Institucion newVal){
		m_Institucion = newVal;
	}

}
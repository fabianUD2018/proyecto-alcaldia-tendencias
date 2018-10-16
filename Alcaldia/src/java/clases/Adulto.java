package clases;





/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:42 p. m.
 */
public class Adulto extends Persona {

	private String cargo;
	private Empresa empresa;
	private String jornada;
	private int sueldo;
	private Empresa m_Empresa;

	public Adulto(){

	}

	public void finalize() throws Throwable {
		super.finalize();
	}

	public String getDatos(){
		return "";
	}

	public Empresa getEmpresa(){
		return m_Empresa;
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
	public void  setDatos(String param){

	}

	/**
	 * 
	 * @param newVal
	 */
	public void setEmpresa(Empresa newVal){
		m_Empresa = newVal;
	}

}
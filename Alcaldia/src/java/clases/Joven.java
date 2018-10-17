package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:08 p. m.
 */
public class Joven extends Persona {

	private String curso;
	private String educacion;
	private String jornada;
	private Plantel plantel;
	private String tipoE;
	private Plantel m_Plantel;

    public Joven(String curso, String educacion, String jornada, Plantel plantel, String tipoE, Plantel m_Plantel) {
        this.curso = curso;
        this.educacion = educacion;
        this.jornada = jornada;
        this.plantel = plantel;
        this.tipoE = tipoE;
        this.m_Plantel = m_Plantel;
    }

	
        
	public void finalize() throws Throwable {
		super.finalize();
	}

	public String getDatos(){
		return "";
	}

	public Plantel getPlantel(){
		return m_Plantel;
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
	public void setPlantel(Plantel newVal){
		m_Plantel = newVal;
	}

}
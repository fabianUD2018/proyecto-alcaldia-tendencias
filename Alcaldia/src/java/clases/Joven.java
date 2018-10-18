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
	
    public Joven(int codigo, int documento, String fNacimiento, String lugar, String nombre, String curso, String educacion, String jornada, Plantel plantel, String tipoE) {
        super( codigo,  documento,  fNacimiento, lugar, nombre);
        this.curso = curso;
        this.educacion = educacion;
        this.jornada = jornada;
        //this.plantel = plantel;
        this.tipoE = tipoE;
        
    }

    public String getCurso() {
        return curso;
    }

    public String getEducacion() {
        return educacion;
    }

    public String getJornada() {
        return jornada;
    }

    public Plantel getPlantel() {
        return plantel;
    }

    public String getTipoE() {
        return tipoE;
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

	

}
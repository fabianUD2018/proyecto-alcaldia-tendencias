package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:04 p. m.
 */
public class Institucion {

	private String actividadEconomica;
	private String jurisdiccion;
	private String nombre;
	private String tipo;

    public Institucion(String actividadEconomica, String jurisdiccion, String nombre, String tipo) {
        this.actividadEconomica = actividadEconomica;
        this.jurisdiccion = jurisdiccion;
        this.nombre = nombre;
        this.tipo = tipo;
    }

	

	public void finalize() throws Throwable {

	}

	public String getDatos(){
		return "";
	}

	/**
	 * 
	 * @param param
	 */
	public String setDatos(String param){
		return "";
	}

    public String getActividadEconomica() {
        return actividadEconomica;
    }

    public String getJurisdiccion() {
        return jurisdiccion;
    }

    public String getNombre() {
        return nombre;
    }

    public String getTipo() {
        return tipo;
    }
        
        

}
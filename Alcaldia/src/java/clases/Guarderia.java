package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:01 p. m.
 */
public class Guarderia extends Institucion {

	private String nit;
	private String representante;
        private String id_guarderia;
	public Guarderia(String id_guarderia, String nombre, String actividad, String juris,
                String dueño, String nit, String tipo){
            super(actividad,juris, nombre, tipo);
            this.id_guarderia=id_guarderia;
            this.nit = nit;
            this.representante = dueño;

	}

	public void finalize() throws Throwable {
		super.finalize();
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

    public String getId_guarderia() {
        return id_guarderia;
    }

    public String getNit() {
        return nit;
    }

    public String getRepresentante() {
        return representante;
    }

}
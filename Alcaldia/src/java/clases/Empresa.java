package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:54 p. m.
 */
public class Empresa extends Institucion {

	private String dueno;
	private String nit;
        private String id_empresa;

	public Empresa(String id, String nombre, String actividad, String juris,
                String dueño, String nit, String tipo){
            super(actividad,juris, nombre, tipo);
            this.dueno = dueño;
            this.nit = nit;
            this.id_empresa=id;
	}

    public String getId_empresa() {
        return id_empresa;
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

    public String getDueno() {
        return dueno;
    }

    public String getNit() {
        return nit;
    }
        
        

}
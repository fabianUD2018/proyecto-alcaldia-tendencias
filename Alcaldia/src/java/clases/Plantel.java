package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:17 p. m.
 */
public class Plantel extends Institucion {

	private String representante;
	private String tipo_plantel;
        private int nit;

    public Plantel(String nombre, String actividad, String juris,
                String dueño, String nit, String tipo,String tipoPlantel) {
        super(actividad,juris, nombre, tipo);
        this.representante = dueño;
        this.tipo_plantel = tipoPlantel;
        this.nit = Integer.parseInt(nit);
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

    public String getRepresentante() {
        return representante;
    }

    public String getTipo_plantel() {
        return tipo_plantel;
    }

    public int getNit() {
        return nit;
    }
    
    

}
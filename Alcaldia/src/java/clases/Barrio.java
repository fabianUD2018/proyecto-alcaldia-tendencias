package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:45 p. m.
 */
public abstract class Barrio {

	private String area;
	private int estrato;
	private Familia familias;
	private String nombre;
	private String tipoBarrio;

	public Barrio(){

	}

	public void finalize() throws Throwable {

	}

    /**
     * @return the area
     */
    public String getArea() {
        return area;
    }

    /**
     * @return the estrato
     */
    public int getEstrato() {
        return estrato;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @return the tipoBarrio
     */
    public String getTipoBarrio() {
        return tipoBarrio;
    }

    /**
     * @param area the area to set
     */
    public void setArea(String area) {
        this.area = area;
    }

    /**
     * @param estrato the estrato to set
     */
    public void setEstrato(int estrato) {
        this.estrato = estrato;
    }

    /**
     * @param familias the familias to set
     */
    public void setFamilias(Familia familias) {
        this.familias = familias;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @param tipoBarrio the tipoBarrio to set
     */
    public void setTipoBarrio(String tipoBarrio) {
        this.tipoBarrio = tipoBarrio;
    }
        
    
}
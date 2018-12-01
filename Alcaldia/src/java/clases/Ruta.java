package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:19 p. m.
 */
public class Ruta {

	private String descripcion;
	private int nombreRuta;

	public Ruta(int nombre, String des){
            nombreRuta=nombre;
            descripcion= des;
	}

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @return the nombreRuta
     */
    public int getNombreRuta() {
        return nombreRuta;
    }

}
package clases;

/**
 * @author Rodrigon
 * @version 1.0
 * @created 16-oct.-2018 4:11:46 p. m.
 */
public class BarrioN extends Barrio {

    public BarrioN() {

    }

    public BarrioN(String nombre, int estrato, String area, String tipo) {
        super.setNombre(nombre);
        super.setArea(area);
        super.setEstrato(estrato);
        super.setTipoBarrio(tipo);
    }

    public void finalize() throws Throwable {
        super.finalize();
    }

    /**
     *
     * @param param
     */
    public void setDatos(String param) {

    }

}

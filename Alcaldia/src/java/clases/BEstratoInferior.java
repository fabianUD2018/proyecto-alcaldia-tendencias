package clases;

import java.util.ArrayList;

/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:48 p. m.
 */
public class BEstratoInferior extends Barrio {

    private ArrayList<Ruta> m_Rutas;

    public BEstratoInferior() {

    }

    BEstratoInferior(String nombre, int estrato, String area, String tipo) {
        m_Rutas = new ArrayList<>();
        super.setNombre(nombre);
        super.setArea(area);
        super.setEstrato(estrato);
        super.setTipoBarrio(tipo);
    }

    public void añadirRuta(Ruta ruta) {
        getM_Rutas().add(ruta);
    }

    /**
     * @return the m_Rutas
     */
    public ArrayList<Ruta> getM_Rutas() {
        return m_Rutas;
    }

}

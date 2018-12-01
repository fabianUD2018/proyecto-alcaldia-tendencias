package clases;

import java.util.ArrayList;

/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:50 p. m.
 */
public class BIndustrial extends Barrio {

    private ArrayList<Institucion> m_Institucion;

    public BIndustrial() {
        m_Institucion = new ArrayList<>();
    }

    BIndustrial(String nombre, int estrato, String area, String tipo) {
        super.setNombre(nombre);
        super.setArea(area);
        super.setEstrato(estrato);
        super.setTipoBarrio(tipo);
    }

    /**
     * @return the empresas
     */
    /**
     * @return the m_Institucion
     */
    public ArrayList<Institucion> getM_Institucion() {
        return m_Institucion;
    }
    

}

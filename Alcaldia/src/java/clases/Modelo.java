package clases;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:12:13 p. m.
 */
public class Modelo {
    
    private ArrayList<Barrio> barrios;
    private GestorBaseDatos db;
    private Familia familia[];
    private Institucion insti[];
    private ArrayList<Persona> personas;
    private ArrayList<Enfermedad> listaE;
    public Institucion m_Institucion;
    public Barrio m_Barrio;
    public Familia m_Familia;
    public Persona m_Persona;
    public GestorBaseDatos m_GestorBaseDatos;
    public Controlador m_Controlador;
    
    public Modelo() {
        personas = new ArrayList();
        barrios = new ArrayList();
        listaE = new ArrayList<>();
        db = GestorBaseDatos.obtenerGestor();
        db.realizaConexion();
        cargarEnfermedades();
        this.cargarTodasPersonas();
    }
    
    public ArrayList<Barrio> getBarrios() {
        return barrios;
    }
    
    public Familia[] getFamilia() {
        return familia;
    }
    
    public Institucion[] getInsti() {
        return insti;
    }
    
    public ArrayList<Enfermedad> getListaE() {
        return listaE;
    }
    
    public ArrayList<Persona> getPersonas() {
        return this.personas;
    }
    
    @Override
    public void finalize() throws Throwable {
        
    }
    
    public Barrio consultarBarrio() {
        return null;
    }
    
    private Familia consultarFamilia() {
        return null;
    }
    
    public Institucion consultarInstitucion() {
        return null;
    }
    
    public Persona consultarPersona() {
        return null;
    }

    /**
     *
     * @param b
     */
    public void crearBarrio(Barrio b) {
        
    }

    /**
     *
     * @param f
     */
    public void crearFamilia(Familia f) {
        
    }

    /**
     *
     * @param i
     */
    public void crearInstitucion(Institucion i) {
        
    }

    /**
     *
     * @param p
     */
    public void crearPersona(Persona p) {
        
    }
    
    public void cargarTodasPersonas() {
        this.personas.clear();
        cargarPersonasJovenes();
        cargarPersonasMenor();
        cargarPersonasAdultas();
    }
    
    public void cargarTodosBarrio() {
        this.barrios.clear();
        cargarBarriosN();
        cargarBarriosIndustriales();
        cargarBarriosEstrato12();
    }
    
    public void cargarBarriosN() {
        ResultSet st = db.read("select * from barrio where barrio.estrato>2 and barrio.tipo!='Industrial'");
        try {
            while (st.next()) {
                String nombre = st.getString("nombre");
                int estrato = st.getInt("estrato");
                String area = st.getString("area");
                String tipo = st.getString("tipo");
                BarrioN aTemp = new BarrioN(nombre, estrato, area, tipo);
                barrios.add(aTemp);

                //Falta guardarle las familias        
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void cargarBarriosIndustriales() {
        ResultSet st = db.read("select * from barrio , b_industrial  where barrio.id_barrio=b_industrial.id_barrio");
        try {
            while (st.next()) {
                String nombre = st.getString("nombre");
                int estrato = st.getInt("estrato");
                String area = st.getString("area");
                String tipo = st.getString("tipo");
                BIndustrial aTemp = new BIndustrial(nombre, estrato, area, tipo);
                barrios.add(aTemp);

                //Falta guardarle las familias        
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void cargarBarriosEstrato12() {
        ResultSet st = db.read("select * from barrio , b_bajo  where barrio.id_barrio=b_bajo.id_barrio");
        ResultSet rt;
        ArrayList<Ruta> rutas = new ArrayList<>();
        try {
            while (st.next()) {
                rt = db.read("select * from rutas,bajo_rutas, b_bajo, barrio  where rutas.id_ruta=bajo_rutas.id_ruta and b_bajo.id_b_bajo=bajo_rutas.id_b_bajo and b_bajo.id_barrio=barrio.id_barrio and barrio.id_barrio=" + st.getString("id_barrio"));
                String nombre = st.getString("nombre");
                int estrato = st.getInt("estrato");
                String area = st.getString("area");
                String tipo = st.getString("tipo");
                BEstratoInferior aTemp = new BEstratoInferior(nombre, estrato, area, tipo);
                while (rt.next()) {
                    boolean existeRuta = false;
                    int posicionRuta=0;
                    int codigoRuta = rt.getInt("id_ruta");
                    for (int i = 0; i < rutas.size(); i++) {
                        if (codigoRuta == rutas.get(i).getNombreRuta()) {
                            existeRuta = true;
                            posicionRuta = i;
                        }
                    }
                    if (!existeRuta) {
                        String nombreRuta = rt.getString("des_ruta");                        
                        Ruta rut = new Ruta(codigoRuta, nombreRuta);                        
                        rutas.add(rut);
                        aTemp.añadirRuta(rut);
                    } else {
                        aTemp.añadirRuta(rutas.get(posicionRuta));
                    }
                    existeRuta = false;
                }
                barrios.add(aTemp);
                //Falta guardarle las familias        
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void cargarPersonasAdultas() {
        
        ResultSet st = db.read("select * from persona inner join adulto on persona.id_persona = adulto.id_persona");
        try {
            while (st.next()) {
                String nombre = st.getString("nombre");
                int codigo = st.getInt("id_persona");
                int documento = st.getInt("documento");
                Date fecha_nac = st.getDate("fecha_nacimiento");
                String lugar = st.getString("lugar");
                String cargo = st.getString("cargo");
                String jornada = st.getString("jornada");
                String sueldo = st.getString("sueldo");

                //falta recibir la empresa 
                Adulto aTemp = new Adulto(codigo, documento, fecha_nac + "", lugar, nombre, cargo, jornada, sueldo);
                
                personas.add(aTemp);

                //Falta obtener garderia de un menor
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void insertarPersona(String sql) {
        this.db.create(sql);
    }
    
    public void insertarBarrio(String sql) {
        this.db.create(sql);
    }
    
    public void cargarPersonasMenor() {
        
        ResultSet st = db.read("select * from persona inner join persona_menor on persona.id_persona = persona_menor.id_persona");
        try {
            while (st.next()) {
                String nombre = st.getString("nombre");
                int codigo = st.getInt("id_persona");
                int documento = st.getInt("documento");
                Date fecha_nac = st.getDate("fecha_nacimiento");
                String lugar = st.getString("lugar");
                int id_menor = st.getInt("id_menor");
                System.out.println(id_menor + "<-");
                int id_guarderia = st.getInt("id_guarderia");
                ResultSet st2 = db.read("select men.id_menor, men.id_enfermedad, e.descripcion from  menor_enfermedad men, enfermedades e where men.id_menor = " + id_menor + " and e.id_enfermedad = men.id_enfermedad ;");
                //obtener enfermedades de un menor
                Menor menorTemp = new Menor(codigo, documento, fecha_nac + "", lugar, nombre, null);
                while (st2.next()) {
                    
                    for (Enfermedad temp : listaE) {
                        
                        if (temp.getNombre().equals(st2.getInt("id_enfermedad") + "")) {
                            
                            menorTemp.addEnfermedad(temp);
                            break;
                        }
                    }
                    
                }
                System.out.println(menorTemp.getEnfermedades().size());
                personas.add(menorTemp);

                //Falta obtener garderia de un menor
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void cargarPersonasJovenes() {
        
        ResultSet st = db.read("select * from persona inner join joven on persona.id_persona = joven.id_joven order by nombre");
        try {
            while (st.next()) {
                String nombre = st.getString("nombre");
                int codigo = st.getInt("id_persona");
                int documento = st.getInt("documento");
                Date fecha_nac = st.getDate("fecha_nacimiento");
                String lugar = st.getString("lugar");
                String curso = st.getString("curso");
                String educacion = st.getString("educacion");
                String tipo_e = st.getString("tipo_e");
                //plantel 
                personas.add(new Joven(codigo, documento, fecha_nac + "", lugar, nombre, curso, educacion, "Diuna", null, tipo_e));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /*Cargar todas las enfermedades de la base de datos al sistema*/
    private void cargarEnfermedades() {
        
        ResultSet st = db.read("select * from enfermedades");
        try {
            while (st.next()) {
                int id = st.getInt("id_enfermedad");
                String temp = st.getString("descripcion");
                listaE.add(new Enfermedad(id + "", temp));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}

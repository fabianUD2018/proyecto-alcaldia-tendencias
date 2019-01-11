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
    private ArrayList<Familia> familia;
    private ArrayList<Persona> personas;
    private ArrayList<Enfermedad> listaE;
    private ArrayList<Institucion> insti;
    public Institucion m_Institucion;
    public Barrio m_Barrio;
    public Familia m_Familia;
    public Persona m_Persona;
    public GestorBaseDatos m_GestorBaseDatos;
    public Controlador m_Controlador;
    
    public Modelo() {
        personas = new ArrayList();
        barrios = new ArrayList();
        insti = new ArrayList();
        familia = new ArrayList();
        listaE = new ArrayList<>();
        db = GestorBaseDatos.obtenerGestor();
        db.realizaConexion();
        cargarEnfermedades();
        this.cargarTodasLasInstituciones();
        this.cargarTodasPersonas();

    }
    
    public ArrayList<Barrio> getBarrios() {
        System.out.println("cantidad de barrios cargados: "+ barrios.size());
        return barrios;
    }

    public ArrayList<Familia> getFamilia() {
        return familia;
    }

    public ArrayList<Institucion> getInsti() {
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
                
            }

  
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
      public void cargarTodasLasInstituciones() {
        this.insti.clear();
        this.cargarEmpresas();
        this.cargarGuarderias();
        this.cargarPlanteles();
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
                String id_adulto = st.getInt("id_adulto") + "";//cuidado con esto
                ResultSet st2 = db.read("select id_empresa from adulto_empresa where adulto_empresa.id_adulto = " + id_adulto);
                //falta recibir la empresa 
                Adulto aTemp = new Adulto(codigo, documento, fecha_nac + "", lugar, nombre, cargo, jornada, sueldo);

                while (st2.next()) {
                    String id_empresa = st2.getInt("id_empresa") + "";
                    
                    for (Institucion temp : insti) {
                        if (temp instanceof Empresa) {
                            Empresa t = (Empresa) temp;
                            if (t.getId_empresa().equals(id_empresa)) {
                                System.out.println(temp.getNombre());
                                aTemp.addEmpresa(t);
                                break;
                            }
                        }

                    }
                }

                
                personas.add(aTemp);

                
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

                Menor menorTemp = new Menor(codigo, documento, fecha_nac + "", lugar, nombre, null);
                while (st2.next()) {
                    
                    for (Enfermedad temp : listaE) {
                        
                        if (temp.getNombre().equals(st2.getInt("id_enfermedad") + "")) {
                            
                            menorTemp.addEnfermedad(temp);
                            break;
                        }
                    }
                    
                }

                for (Institucion temp : insti) {
                    if (temp instanceof Guarderia) {
                        Guarderia t = (Guarderia) temp;
                        if (t.getId_guarderia().equals(id_guarderia + "")) {
                            System.out.println(temp.getNombre());
                            menorTemp.setGuarderia(t);
                            break;
                        }
                    }

                }

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
                String id_plantel = st.getInt("id_plantel") + "";
                //plantel 
                Joven tempJ = new Joven(codigo, documento, fecha_nac + "", lugar, nombre, curso, educacion, "Diuna", null, tipo_e);
                for (Institucion temp : insti) {
                    if (temp instanceof Plantel) {
                        Plantel t = (Plantel) temp;
                        if (t.getId_plantel().equals(id_plantel + "")) {
                            System.out.println(t.getNombre());
                            tempJ.setPlantel(t);
                            break;
                        }
                    }

                }
                personas.add(tempJ);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /*Cargar todas las enfermedades de la base de datos al sistema*/
    public void cargarEnfermedades() {
        listaE.clear();
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

    public void cargarEmpresas() {

        ResultSet st = db.read("select * from institucion inner join empresa on institucion.id_institucion = empresa.id_institucion");
        try {
            while (st.next()) {
                String nombre = st.getString("nombre");
                String actividad = st.getString("actividad");
                String jurisdiccion = st.getString("jurisdiccion");
                String nit = st.getString("nit");
                String dueño = st.getString("dueno");
                String tipo = st.getString("tipo");
                String id_empresa = st.getInt("id_empresa") + "";

                Empresa empTemp = new Empresa(id_empresa, nombre, actividad, jurisdiccion, dueño, nit, tipo);
                insti.add(empTemp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void cargarPlanteles() {

        ResultSet st = db.read("select * from institucion inner join plantel on institucion.id_institucion = plantel.id_institucion");
        try {
            while (st.next()) {
                String nombre = st.getString("nombre");
                String actividad = st.getString("actividad");
                String jurisdiccion = st.getString("jurisdiccion");
                String nit = st.getString("nit");
                String dueño = st.getString("representante");
                String tipo = st.getString("tipo");
                String tipoPlantel = st.getString("tipo_plantel");
                String id_plantel = st.getInt("id_plantel") + "";

                Plantel empTemp = new Plantel(id_plantel, nombre, actividad, jurisdiccion, dueño, nit, tipo, tipoPlantel);
                insti.add(empTemp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void cargarGuarderias() {

        ResultSet st = db.read("select * from institucion inner join guarderia on institucion.id_institucion = guarderia.id_institucion");
        try {
            while (st.next()) {
                String nombre = st.getString("nombre");
                String actividad = st.getString("actividad");
                String jurisdiccion = st.getString("jurisdiccion");
                String nit = st.getString("nit");
                String dueño = st.getString("representante");
                String tipo = st.getString("tipo");
                String id_guarderia = st.getInt("id_guarderia") + "";

                Guarderia empTemp = new Guarderia(id_guarderia, nombre, actividad, jurisdiccion, dueño, nit, tipo);
                insti.add(empTemp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int obtenerIndice(String entidad) {
        ResultSet st = db.read("select * from " + entidad + " ORDER BY id_" + entidad + " DESC LIMIT 1");
        try {
            st.next();

            return Integer.parseInt(st.getString("id_" + entidad));
        } catch (SQLException ex) {
            System.out.println("lesto");
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
    }

    public int obtenerIndice(String entidad, String codigo) {
        ResultSet st = db.read("select * from " + entidad + " ORDER BY id_" + codigo + " DESC LIMIT 1");
        try {
            st.next();

            return Integer.parseInt(st.getString("id_" + codigo));
        } catch (SQLException ex) {
            System.out.println("lesto");
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
    }

    public void cargarFamilias() {
        this.familia.clear();
        this.cargarTodasPersonas();
        ResultSet st = db.read("select * from familia");
        try {
            while (st.next()) {
                int id_codigo = Integer.parseInt(st.getString("id_codigo"));
                int barrio  = Integer.parseInt(st.getString("id_barrio"));
                String direccion = st.getString("direccion");
                String ingresos = st.getString("ingresos");
                int telefono = Integer.parseInt(st.getString("telefono"));
                String habitacion = st.getString("tipo_habitacion");
                String tipo_vivienda = st.getString("tipo_vivienda");
                ArrayList<String> temp = obtenerFamiliaPersona(id_codigo);
                ArrayList<Persona> familiares = new ArrayList<Persona>();
                if (!temp.isEmpty()) {
                    for (String codigoPersona : temp) {
                        for (Persona i : this.personas) {
                            if (i.getCodigo() == Integer.parseInt(codigoPersona)) {
                                familiares.add(i);
                            }
                        }
                    }
                }

                Familia empTemp = new Familia(id_codigo, barrio ,direccion, ingresos, telefono, habitacion, tipo_vivienda, familiares);
                familia.add(empTemp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<String> obtenerFamiliaPersona(int codigo) {
        ResultSet st = db.read("select id_persona from familia_persona where id_codigo = " + codigo);
        ArrayList<String> consulta = new ArrayList<String>();
        try {
            while (st.next()) {
                consulta.add(st.getString("id_persona"));
            }
        } catch (Exception e) {
        }
        System.out.println("personita   " + consulta.size());

        return consulta;

    }
    
    public int obtenerIdBarrio(String nombre){
        ResultSet st = db.read("select * from barrio where nombre = \'"+nombre+"\'");
        try {
            st.next();

            return Integer.parseInt(st.getString("id_barrio"));
        } catch (SQLException ex) {
            System.out.println("lesto");
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
        
        
    }
    
    public String nombreBarrio(int llave){
        ResultSet st = db.read("select * from barrio where id_barrio = \'"+llave+"\'");
        try {
            st.next();

            return st.getString("nombre");
        } catch (SQLException ex) {
            System.out.println("lesto");
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
            return "Sin Nombre";
        }
    }
    
    

}

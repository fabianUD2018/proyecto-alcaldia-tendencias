package clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * <ol>
 * 	<li></li>
 * </ol>
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:59 p. m.
 */
public class GestorBaseDatos {

	/**
	 * @version 1.0
	 * @created 16-oct.-2018 4:11:59 p. m.
	 */

	private static GestorBaseDatos gestor;
	private Memento ultimaConsulta;
	public GestorBaseDatos m_GestorBaseDatos;
        private Statement st;
        Connection conn = null;

        private void GestorBaseDatos(){

	}
        public static GestorBaseDatos obtenerGestor(){
            if (gestor ==null){
                gestor = new GestorBaseDatos();
                
            }
                return gestor;
            
                 
        }
        
    public void realizaConexion() {
        
        String urlDatabase = "jdbc:postgresql://127.0.0.1/p5";
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(urlDatabase, "postgres", "Hmdemo123");
            st = conn.createStatement();
            
        } catch (Exception e) {
            System.out.println("Ocurrio un error : " + e.getMessage());
        }
        System.out.println("La conexión se realizo sin problemas! =) ");
        
    }



	

	/**
	 * 
	 * @param sql
	 */
	public void create(String sql){
		 ResultSet rs = null;
                
            try {
                 
                rs = st.executeQuery(sql);
            } catch (SQLException ex) {
                //Logger.getLogger(GestorBaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            }
		
	}

	/**
	 * 
	 * @param sql
	 */
	public void delete(String sql){
		 ResultSet rs = null;
            try {
                rs = st.executeQuery(sql);
            } catch (SQLException ex) {
                Logger.getLogger(GestorBaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            }
		
	}

	

	/**
	 * 
	 * @param sql
     * @return 
	 */
	public ResultSet read(String sql){
             ResultSet rs = null;
            try {
                Statement temp = conn.createStatement();
                rs = temp.executeQuery(sql);
                
            } catch (SQLException ex) {
                Logger.getLogger(GestorBaseDatos.class.getName()).log(Level.SEVERE, null, ex);
            }
            
		return rs;
	}

	/**
	 * 
	 * @param sql
	 */
	public void update(String sql){
             ResultSet rs = null;
            try {
                rs = st.executeQuery(sql);
            } catch (SQLException ex) {
                Logger.getLogger(GestorBaseDatos.class.getName()).log(Level.SEVERE, null, ex);
                
            }
		
	}
        
        
	public class Memento {

		private String consutla;

		public Memento(){

		}

		public void finalize() throws Throwable {

		}

		/**
		 * 
		 * @param estado
		 */
		public void Memento(String estado){

		}

		public String getMemento(){
			return "";
		}

		/**
		 * 
		 * @param memento
		 */
		public void setMemento(String memento){

		}

	}

}
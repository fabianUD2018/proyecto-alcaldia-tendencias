package clases;


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

	private GestorBaseDatos gestor;
	private Memento ultimaConsulta;
	public GestorBaseDatos m_GestorBaseDatos;



	public void finalize() throws Throwable {

	}

	private void GestorBaseDatos(){

	}

	/**
	 * 
	 * @param sql
	 */
	public String create(String sql){
		return "";
	}

	/**
	 * 
	 * @param sql
	 */
	public String delete(String sql){
		return "";
	}

	public static void getGestorDeBase(){

	}

	/**
	 * 
	 * @param sql
	 */
	public String read(String sql){
		return "";
	}

	/**
	 * 
	 * @param sql
	 */
	public String update(String sql){
		return "";
	}

}
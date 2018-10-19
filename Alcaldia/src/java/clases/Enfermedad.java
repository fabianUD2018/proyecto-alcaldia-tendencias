package clases;


/**
 * @author fcher
 * @version 1.0
 * @created 16-oct.-2018 4:11:56 p. m.
 */
public class Enfermedad {
        private String nombre;//aqui guardo el id
	private String descripcion;

    public Enfermedad(String nombre, String d) {
        this.nombre = nombre;
        this.descripcion = d;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
	
        
	

	public void finalize() throws Throwable {

	}

}
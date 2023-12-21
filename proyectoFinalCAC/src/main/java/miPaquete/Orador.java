package miPaquete;

public class Orador {

	private Integer  id ;
	private String   nombre ;
	private String   apellido ;
	private String   tematica ;
		
	
	public Orador() {
		super();
	}

	public Orador(Integer id, String nombre, String apellido, String tematica) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.tematica = tematica;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getTematica() {
		return tematica;
	}

	public void setTematica(String tematica) {
		this.tematica = tematica;
	}
	
	
	
	
}

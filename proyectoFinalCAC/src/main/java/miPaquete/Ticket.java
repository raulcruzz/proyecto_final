package miPaquete;

public class Ticket {
	private int id;
	private String nombre; 
	private String apellido;
	private String mail;
	private int cantidad;
	private String tipo_ticket;
	private float total_facturado;
	
	
	
	public Ticket() {
		super();
	}

	public Ticket(int id, String nombre, String apellido, String mail, int cantidad, String tipo_ticket,
			float total_facturado) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.cantidad = cantidad;
		this.tipo_ticket = tipo_ticket;
		this.total_facturado = total_facturado;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
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
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public String getTipo_ticket() {
		return tipo_ticket;
	}
	public void setTipo_ticket(String tipo_ticket) {
		this.tipo_ticket = tipo_ticket;
	}
	public float getTotal_facturado() {
		return total_facturado;
	}
	public void setTotal_facturado(float total_facturado) {
		this.total_facturado = total_facturado;
	}
	
}

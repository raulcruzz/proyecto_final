package miPaquete;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TicketDAO 
{

	Connection conexion=null;
	
	public TicketDAO() throws ClassNotFoundException
	{
		System.out.println("JT22 - En TicketDAO - Antes de Conexion con = new Conexion(); ");
		Conexion con = new Conexion();
		
		System.out.println("JT23 - En TicketDAO - Antes  conexion = con.getConnection();	 ");
		
		conexion = con.getConnection();	
		
		System.out.println("JT24 - En TicketDAO - Despues de conexion = con.getConnection();	 ");
	}
	
	// listar
	public List<Ticket> listarTickets()
	{
		PreparedStatement ps; 
		ResultSet rs;
		List<Ticket> lista = new ArrayList<>();
		
		try
		{
			ps = conexion.prepareStatement( "select * from tickets");
			rs = ps.executeQuery();
			
			while(rs.next()) 
			{
				int id               = rs.getInt   ("id");
				String nombre        = rs.getString("nombre");
				String apellido      = rs.getString("apellido");
				String mail 	     = rs.getString("mail");
				int    cantidad      = rs.getInt   ("cantidad");
				String tipo_ticket   = rs.getString("tipo_ticket");
				float  total_factura = rs.getFloat ("total_facturado");	
				
				Ticket ticket = new Ticket(id,nombre,apellido,mail,cantidad,tipo_ticket,total_factura);
				
				lista.add(ticket);
			}
			return lista;
		} 
		catch(SQLException e) 
		{
		   System.out.println("JT02 - Error en TicketDAO"); 	
		   System.out.println(e);
		   return null;
		}
		
	}
	
	public boolean insertarTicket(Ticket ticket) 
	{
	    PreparedStatement ps;
	     
	    try 
	    {
	    	ps = conexion.prepareStatement("insert into tickets(nombre,apellido,mail,cantidad,tipo_ticket,total_facturado) " +
	    								   "values(?,?,?,?,?,?)");
	    	ps.setString(1,ticket.getNombre());
	    	ps.setString(2,ticket.getApellido());
	    	ps.setString(3,ticket.getMail());
	    	ps.setInt   (4,ticket.getCantidad());
	    	ps.setString(5,ticket.getTipo_ticket());
	    	ps.setFloat (6,ticket.getTotal_facturado());
	    	
	    	ps.execute();
	    	
	  
	    	return true;
		} 
	    catch(SQLException e) 
	    {
	    	System.out.println("JT03 - Error en TicketDAO"); 
			System.out.println(e);
			return false;
		}
	}
	
	public boolean eliminarTicket(int id) 
	{
		
	  PreparedStatement ps;
	  
	  try 
	  {
	    	ps = conexion.prepareStatement("delete from tickets where id = ? ");
	    	ps.setInt(1,id);
	    	ps.execute();

	    	return true;
	  }
	  catch(SQLException e) 
	  {
		    System.out.println("JT04 - Error en TicketDAO"); 	
			System.out.println(e);
			return false;
	  }
	}

}

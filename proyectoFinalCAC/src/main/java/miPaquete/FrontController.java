package miPaquete;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       

    public FrontController() 
    {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String    accion    = null;		
	 	TicketDAO ticketDAO = null;   
	 	OradorDAO oradorDAO = null;
	 			
		try
		{
		  System.out.println("JT00 en FrontController  - antes de new TicketDAO(); ");	
		  ticketDAO  = new TicketDAO();
		  System.out.println("JT00 en FrontController  - despues de new TicketDAO(); ");	
		}
		  catch(ClassNotFoundException e)
		{
		    System.out.println("JT01 en FrontController  - Error ");  
			System.out.println(e);
		}
		
	
		try
		{		
		  oradorDAO = new OradorDAO();
		}
		  catch(ClassNotFoundException e)
		{
			System.out.println(e);
		}
	
		
		RequestDispatcher dispatcher=null;
		accion = request.getParameter("accion");
		
		
		if(accion==null || accion.isEmpty() || accion.isBlank())
		{
			dispatcher=request.getRequestDispatcher("vistas/indexV2.jsp");
	    }
		//else if(accion.equals("regitrar"))
		//{
		//	dispatcher=request.getRequestDispatcher("vistas/indexV2.jsp");
	    //}
		
		else if(accion.equals("backofficeTkt"))
		{
			dispatcher=request.getRequestDispatcher("vistas/backofficeTkt.jsp");
			
	    }	
		else if(accion.equals("backofficeOra"))
		{
			dispatcher=request.getRequestDispatcher("vistas/backofficeOra.jsp");
			
	    }	
		
		else if(accion.equals("eliminarOrador"))
		{
			Integer   id        = Integer.parseInt(request.getParameter("id"));
			System.out.println("eliminarTicket:"+id);
			oradorDAO.eliminarOrador(id);
			dispatcher=request.getRequestDispatcher("vistas/backofficeOra.jsp");
	    }		
		
		else if(accion.equals("eliminarTicket"))
		{
			Integer   id        = Integer.parseInt(request.getParameter("id"));
			System.out.println("eliminarTicket:"+id);
			ticketDAO.eliminarTicket(id);
			dispatcher=request.getRequestDispatcher("vistas/backofficeTkt.jsp");
	    }
		
		else if(accion.equals("registrarOrador"))
		{
			String nombre     = request.getParameter("nombre");
			String apellido   = request.getParameter("apellido");
			String tematica   = request.getParameter("tematica");
			
			
			System.out.println("registrarOrador: "+nombre + " - " + apellido + " - " + tematica);
			if(nombre=="" || apellido == "" || tematica == "" ) {
				System.out.println("registrarOrador: algo null - no inserto ");
			}
			else
			{
				System.out.println("registrarOrador: antes de insertar");
				Orador orador=new Orador(0,nombre,apellido,tematica);
				oradorDAO.insertarOrador(orador);				
			}
	
			dispatcher=request.getRequestDispatcher("vistas/indexV2.jsp");

	    }	
		
		
		else if(accion.equals("comprar"))
		{
			String nombre     = request.getParameter("nombre");
			String apellido   = request.getParameter("apellido");
			String mail       = request.getParameter("mail");
			System.out.println("Formulario:" + nombre + " - " + apellido + " - "  + mail);
			String cantX	  = request.getParameter("cant");
			int    cant       = 0;
			if (cantX != "") {
				cant           = Integer.parseInt(cantX);
			}
			
			System.out.println("Formulario - cant:" + cant);
			String tipo_ticket= request.getParameter("tipo_ticket");
			System.out.println("Formulario - tipo_ticket:" + tipo_ticket);
			float  total       = 0;
			switch(tipo_ticket) {
				case "Estudiante":
					total = Math.round(cant * 200 * 0.8);
					break;
				case "Trainee":
					total = Math.round(cant * 200 * 0.5);
					break;
				case "Junior":
					total = Math.round(cant * 200 * 0.15);
					break;
				default:  // General
					total = Math.round(cant * 200 * 1);
					break;					
			}
			
			// solo inserto si tiene cantidad
			if (cant > 0) {
				Ticket ticket=new Ticket(0,nombre,apellido,mail,cant,tipo_ticket,total);
				ticketDAO.insertarTicket(ticket);
			}
			dispatcher=request.getRequestDispatcher("vistas/indexV2.jsp");		
		}
		
		
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}

}

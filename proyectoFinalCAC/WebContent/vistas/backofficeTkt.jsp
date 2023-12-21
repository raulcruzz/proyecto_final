<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="miPaquete.Ticket"%>
    <%@page import="miPaquete.TicketDAO"%>
    <%@page import="java.util.List"%>
<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/style.css">
  <script src="https://kit.fontawesome.com/5a00f52319.js" crossorigin="anonymous"></script>
  <title>Trabajo final - Back Office</title>
</head>

<body>

  <header class="container-fluid fixed-top w-auto ">
    <div class="row">
      <div class="col-3 text-white ">
        <img src="./i/codoacodo.png" alt="logo" width="100px"> Conf Bs As
      </div>
      <div class="col-8 p-2">
        <ul class="nav justify-content-end ">
          <li> <a class="nav-link text-warning " href="FrontController?accion=backofficeOra">Oradores</a></li>
          <li> <a class="nav-link text-warning " href="FrontController?accion=">Volver</a></li>
        </ul>
      </div>
    </div>
    
  </header>

 <br>

<div class="bg-light container mt-5 ">
   
    <h2 class="text-primary mt-5">Tickets</h2>
    <div class="row">
        <table class=" table table-striped">
    	<thead> 
    	<tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Mail</th>
            <th>Cantidad</th>
            <th>Tipo</th>
            <th>Total</th>
       	    <th>Eliminar</th>     
        </tr>
        </thead> 
        <tbody>
        
        <%
        List<Ticket> resultado=null;
        TicketDAO ticket = new TicketDAO();
        resultado 		 = ticket.listarTickets();
        float totalFacturado=0;
        Ticket t		 = new Ticket();
        
        for(int x=0;x<resultado.size();x++)
        {
        	t = resultado.get(x);
        	String rutaE = "FrontController?accion=eliminarTicket&id=" + t.getId(); 
        %>
        <tr class=" ">
            <td><%=t.getId()%>             </td>
            <td><%=t.getNombre()%>         </td>
            <td><%=t.getApellido()%>       </td>
            <td><%=t.getMail()%>           </td>
            <td><%=t.getCantidad()%>       </td>
            <td><%=t.getTipo_ticket()%>    </td>
            <td><%=t.getTotal_facturado()%></td>
            <td> <a class="text-danger" href="<%=rutaE%>"><i class="fa-solid fa-eraser"></i></a></td>
        </tr>    
        
        <%  
          }
        %>
		</tbody>
    </table>
   </div>
</div>


<footer>

  <div class="mt-3">
    <div class="col-12">
      <ul class="nav justify-content-evenly">
        <a class="nav-link" href="#">Preguntas<br>frecuentes</a>
        <a class="nav-link" href="#">Cont�ctanos</a>
        <a class="nav-link" href="#">Prensa</a>
        <a class="nav-link" href="#">Conferencias</a>
        <a class="nav-link" href="#">T�rminos y<br>Condiciones</a>
        <a class="nav-link" href="#">Privacidad</a>
        <a class="nav-link" href="#">Estudiantes</a>
      </ul>
    </div>

  </div>
</footer>

</body>



  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>


</html>
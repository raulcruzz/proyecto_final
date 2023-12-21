<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/style.css">
  <title>Trabajo Final Java Full Stack</title>
</head>

<body>
  <header class="container-fluid fixed-top w-auto ">
    <div class="row ">
      <div class="col-3 text-white ">
        <img src="./i/codoacodo.png" alt="logo" width="100px"> Conf Bs As
      </div>
      <div class="col-8 p-2">
        <ul class="nav justify-content-end ">
          <li><a class="nav-link active" href="#intro">La conferencia</a></li>
          <li> <a class="nav-link" href="#oradores">Los oradores</a></li>
          <li> <a class="nav-link" href="#info">El lugar y la fecha</a></li>
          <li> <a class="nav-link" href="#formulario">Convi�rtete en orador</a></li>
          <button type="button" class="btn btn-outline-success border-0" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Comprar tickets
          </button>
          <li> <a class="nav-link text-warning " href="FrontController?accion=backofficeTkt ">Back Office</a></li>
        </ul>
      </div>
    </div>
  </header>


  <div id="intro" class="carousel slide position-relative d-flex align-items-center justify-content-end"
    data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img id="intro1" class="d-block w-100">
      </div>
      <div class="carousel-item">
        <img id="intro2" class="d-block w-100">
      </div>
      <div class="carousel-item">
        <img id="intro3" class="d-block w-100">
      </div>
    </div>

    <div class="carousel-indicators">
      <button type="button" data-bs-target="#intro" data-bs-slide-to="0" class="active" aria-current="true"
        aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#intro" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#intro" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    

    <div class="position-absolute text-end col-md-6 col-12 text-light px-5">
      <div class="d-none d-md-block pt-5 mt-5">
        <h1>
          Conf Bs As
        </h1>
        <p>
          Bs As llega por primera vez a Argentina. Un evento para compartir con
          nuestra comunidad el conocimiento y experiencia de los expertos que
          est�n creando el futuro de Internet. Ven a conocer a miembros del
          evento, a otros estudiantes de Codo a Codo y los oradores de primer
          nivel que tenemos para ti. �Te esperamos!
        </p>
      </div>
      <div class="d-none d-sm-block d-md-none text-center mt-5">
        <h1>
          Conf Bs As
        </h1>
        <p>
          Por primera vez a Argentina. Veni a conocer los miembros del evento, estudiantes y oradores de primer nivel
          que tenemos para ti. �Te esperamos!
        </p>
      </div>
      <div class="d-block d-sm-none text-center mb-0 pb-0 mt-5">
        <p class="mb-0 pt-3">
          Conoce los miembros del evento. �Te esperamos!
        </p>
      </div>
      <div class="pt-1 d-grid gap-2 d-md-block">
        <a href="#formulario" type="button" class="btn btn-outline-light hover-negro">Quiero ser orador</a>
        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
          Comprar tickets
        </button>
      </div>
    </div>
  </div>


  <div id="oradores" class="mt-3">
    <div class="container align-text-end">
      <p class="text-center  mb-auto">CONOCE A LOS</p>
      <h1 class="text-center m-0 align-top">Oradores</h1>
      <div class="row text-start">
        <div class="col-sm-4">
          <div class="card" style="width: 24rem;">
            <img src="i/steve.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <a href="https://www.w3schools.com/js/" target="_blank" class="btn btn-warning btn-sm">JavaScript</a>
              <a href="https://www.w3schools.com/react/default.asp" target="_blank"
                class="btn btn-primary btn-sm">React</a>
              <h5 class="card-title">Steve Jobs</h5>
              <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quos quibusdam eum odio iusto voluptates praesentium, maxime error ad libero. Amet ipsam esse neque vel similique doloribus labore tempora ducimus in..</p>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="card" style="width: 24rem;">
            <img src="i/bill.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <a href="https://www.w3schools.com/js/default.asp" target="_blank"
                class="btn btn-warning btn-sm">JavaScript</a>
              <a href="https://www.w3schools.com/react/default.asp" target="_blank"
                class="btn btn-primary btn-sm">React</a>
              <h5 class="card-title">Bill Gates</h5>
              <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quos quibusdam eum odio
                iusto
                voluptates praesentium, maxime error ad libero. Amet ipsam esse neque vel similique doloribus labore
                tempora ducimus in..</p>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="card" style="width: 24rem;">
            <img src="i/ada.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <a href="https://es.wikipedia.org/wiki/Ada_Lovelace" class="btn btn-secondary btn-sm"
                target="_blank">Negocios</a>
              <a href="https://es.wikipedia.org/wiki/Ada_Lovelace" class="btn btn-danger btn-sm"
                target="_blank">Startups</a>
              <h5 class="card-title">Ada Lovelace</h5>
              <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quos quibusdam eum odio
                iusto
                voluptates praesentium, maxime error ad libero. Amet ipsam esse neque vel similique doloribus labore
                tempora ducimus in..</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div id="info" class="mt-4">
    <div class="container-fluid ">
      <div class="row ">

        <div class="col-6 " id="infoImg">
        </div>
        <div class="col-6 mt-2">

          <h3 class="">Bs As - Octubre</h3>
          <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facere recusandae, at deleniti nam earum
            molestias possimus doloribus v sit amet consectetur, adipisicing elit. Facere recusandae, at deleniti nam
            earum molestias possimus doloribus v sit amet consectetur, adipisicing elit. Facere recusandae, at deleniti
            nam earum molestias possimus doloribus voluptatem porro commodi!</p>
          <a href="#intro" type="button" class="btn btn-outline-light hover-negro">Conoc� m�s</a>

        </div>
      </div>
    </div>
  </div>

  <div id="formulario">
  <form id="oradorForm" action="FrontController?accion=registrarOrador" method="post" >

    <div class="container-fluid text-center m-6 p-0">
      <div class="row justify-content-center mt-3">
        <p>CONV�RTETE EN UN</p>
        <h1>ORADOR</h1>
        <p>An�tate como orador para dar una <span class="subrayado">charla ignite</span> Cu�ntanos de qu� quieres hablar!</p>
        
        <div class="col-3 p-1">
          <input type="text" name="nombre" class="form-control" placeholder="Nombre" aria-label="Nombre">
        </div>
        <div class="col-3 p-1">
          <input type="text" name="apellido" class="form-control" placeholder="Apellido" aria-label="Apellido">
        </div>
        <div class="row mt-4 justify-content-center">
          <div class="col-6 text-start p-0">
            <textarea class="form-control " name="tematica"  id="sobreQue" placeholder="Sobre que quieres hablar?" rows="6"></textarea>
            <label class="form-label small " for="sobreQue">Recuerda incluir un t�tulo para tu charla</label>
          </div>
        </div>
        <button type="submit" class="btn btn-success col-6">Enviar</button>
        </form>
      </div>
    </div>
  </div>

 <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Comprar tickets</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-center">

    <div class="row">
      <div class="col-sm-4 ">
        <div class="card border border-primary">
          <div class="card-body">
            <h5 class="card-title">Estudiantes</h5>
            <p class="card-text">Tiene un descuento</p>
            <p>80%</p>
            <p>* presentar documentaci�n</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card ">
          <div class="card-body border border-primary">
            <h5 class="card-title">Trainee</h5>
            <p class="card-text">Tiene un descuento</p>
            <p>50%</p>
            <p>* presentar documentaci�n</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-body border border-warning">
            <h5 class="card-title">Junior</h5>
            <p class="card-text">Tiene un descuento</p>
            <p>15%</p>
            <p>* presentar documentaci�n</p>
          </div>
        </div>
      </div>
    </div>
    <h6 class="m-3">VENTA</h6>
    <form id="ventasForm" action="FrontController?accion=comprar" method="post" >
    <h1>VALOR DE TICKET $200</h1>
    <div id="formulario">
      <div class="row g-3">
        <div class="col-md-6">
          <input name="nombre"  type="text" class="form-control" placeholder="Nombre" aria-label="Nombre">
        </div>
        <div class="col-md-6">
          <input name="apellido" type="text" class="form-control" placeholder="Apellido" aria-label="Apellido">
        </div>
      </div>
      <div class="row g-3 mt-2">
        <div class="col-md-12">
          <input name="mail" type="email" class="form-control" id="mail" placeholder="name@example.com">
        </div>
      </div>
      <div class="row g-3">
        <div class="col">
          <label for="cantidad" class="form-label">Cantidad</label>
          <input name="cant" id="cantidad" type="number" class="form-control" placeholder="cantidad" aria-label="cantidad">
        </div>
        <div class="col">
          <label for="categoria" class="form-label">categoria</label>
          <select name="tipo_ticket" id="categoria" class="form-select">
            <option value="Estudiante" selected>Estudiante</option>
            <option value="Trainee">Trainee</option>
            <option value="Junior"> Junior</option>
            <option value="General">General</option>
          </select>
        </div>

        <div class="row g-3">

          <div class="alert alert-info text-start" >
            <span id="totalPagar">Total a Pagar: $</span>
          </div>
        </div>

        <div class="row g-3">
          <div class="col">
            <button type="reset" class="btn btn-success col-md-5 mx-3">Borrar</button>
            <button type="button" id="calcular" class="btn btn-success col-md-5 mx-3">Calcular</button>
           </div>
           <div> 
            <button type="submit" class="btn btn-success col-md-5 mx-3">Comprar</button>
          </div>
        </div>

      </div>
    </div>
  </form>


</div>
<div class="modal-footer">
  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
</div>
</div>
</div>
</div>

  <footer class="mt-3"><!--  -->
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

  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

   <script src="./js/miScript.js"></script>
</body>

</html>
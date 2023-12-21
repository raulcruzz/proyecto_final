let ventasForm = document.getElementById("ventasForm");
let calcular   = document.getElementById("calcular");

calcular.addEventListener("click",validaciones); 
  
function validaciones() {
  console.log("EN JS  validaciones  1");
  
  var categoria = document.getElementById("categoria").value; // descuento
  var cantidad = document.getElementById("cantidad").value;

  var mail = document.getElementById("mail");

  // Validación del email con expresiones regulares
  // https://www.coderbox.net/blog/validar-email-usando-javascript-y-expresiones-regulares/
  var totalPagar = document.querySelector("#totalPagar");
  var validEmail = /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;

  var valor_unitario = 200;
  var total = 0;

  if (cantidad == "" || cantidad == "0") {
    alert("Debe ingresar cantidad de tickets!!!");
  }
  if (!validEmail.test(mail.value)) {
    alert("El mail no es valido!!!");
  } else {
    console.log("cantidad: " + cantidad);
    console.log("categoria: " + categoria);
   // total = Math.round(cantidad * (categoria / 100) * valor_unitario);
   // console.log("total: " + total);
	switch(categoria) {
		case "Estudiante":
			total = Math.round(cantidad * valor_unitario * 0.8);
			break;
		case "Trainee":
			total = Math.round(cantidad * valor_unitario * 0.5);
			break;
		case "Junior":
			total = Math.round(cantidad * valor_unitario * 0.15);
			break;
		default:  // General
			total = Math.round(cantidad * valor_unitario * 1);
			break;					
	}

    totalPagar.textContent = "El total a Pagar: $ " + total;
  }
};

ventasForm.addEventListener("reset", (e) => {
      totalPagar.textContent = "Total a Pagar: $ ";
  });
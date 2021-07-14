function MostrarPanel(bloq) {
    	
	var obj = document.getElementById(bloq);
	
	if (obj.style.display == "block")
		obj.style.display = "none";
	else
		obj.style.display = "block";
}


function OcultarPanel(bloq) {
	obj = document.getElementById(bloq);
	obj.style.display = (obj.style.display=='none');
	document.getElementById('enla').innerHTML = (obj.style.display=='none');
}


function resolucion(){
	ancho = screen.width;
	alto=screen.height;
	profcolor=screen.colorDepth;
	color=Math.pow(2,profcolor);
	alert("Su resolución de pantalla es de " + ancho + " x " + alto + " \n y está configurada con una profundidad de color de " + profcolor + " bits.\n Es decir, que se puden ver " + color + " colores.");
}

function tamanyo(){
	ancho = screen.width;
	alto=screen.height;
	res = ancho+''+alto;
	return res;
}


function colores(){
	profcolor=screen.colorDepth;
	color=Math.pow(2,profcolor);
	alert("Su resolución está configurada con una profundidad de color de " + profcolor + " bits.\n Es decir, que se puden ver " + color + " colores.");
}

function barra_estado(){
	window.status='Bienvenido a Rutas BTT';
	return true;
}

function redireccionar(ruta){
	location.replace(ruta);
}

function validar(documento){
	var Usuario = documento.registro.Usu.value;
	var Contra = documento.registro.Contra.value;
	alert("Usuario registrado es: " + Usuario + ' con contraseña: ' + Contra);	
}

function registrar(documento){
	var Nombre = documento.registro.Nombre.value;
	var Apellido1 = documento.registro.Apellido1.value;
	var Apellido2 = documento.registro.Apellido2.value;
	var Email = documento.registro.Email.value;
	var Sexo = documento.registro.Sexo.value;
	var Usuario = documento.registro.Usu.value;
	var Contra = documento.registro.Contra.value;
	var Contra1 = documento.registro.Contra1.value;
	var bandera = false;
	
	//var cadena = Nombre.substr(1,(Nombre.length-1));
	//alert ('cadena = ' + cadena + ' y su longitud es= ' + cadena.length);
	//if ( cadena = "")
		// {
			// alert ('cadena vacía');
		// }

	// if (cadena =0)
		// {
			// documento.registro.Nombre.fgcolor = "red";
			// bandera = false;
			// alert ('campo vacío');
		// }
	if (Nombre = " ")
		{
			documento.nom.fgcolor = "red";
			document.registro.Nombre.focus() 
			bandera = false;
		}
	else
		{
			documento.nom.fgcolor = "black";			
			bandera = true;	
		}
	
	if (Apellido1 = " ")
		{
			documento.registro.Apellido1.fgcolor = "red";
			document.registro.Apellido1.focus() 
			bandera = false;
		}
	else
		{
			documento.registro.Apellido1.fgcolor = "black";
			bandera = true;
		}
		
		
	if (Apellido2 = " ")
		{
			documento.registro.Apellido2.fgcolor = "red";
			document.registro.Apellido2.focus() 
			bandera = false;
		}
	else	
		{
			documento.registro.Apellido2.fgcolor = "black";
			bandera = true;
		}
		
	if (Email = " ")
		{
			documento.registro.Email.fgcolor = "red";
			document.registro.Email.focus() 
			bandera = false;
		}
	else
		{
			documento.registro.Email.fgcolor = "black";
			bandera = true;
		}
	
	if (Sexo = " ")
		{
			documento.registro.Sexo.fgcolor = "red";
			document.registro.Sexo.focus() 
			bandera = false;
		}
	else	
		{
			documento.registro.Sexo.fgcolor = "black";
			bandera = true;
		}
		
	if (Usuario = " ")
		{
			documento.registro.Usu.fgcolor = "red";
			document.registro.Usu.focus() 
			bandera = false;
		}
	else
		{
			documento.registro.Usu.fgcolor = "black";
			bandera = true;
		}
		
	if (Contra = " ")
		{
			documento.registro.Contra.fgcolor = "red";
			document.registro.Contra.focus() 
			bandera = false;
		}
	else
		{
			documento.registro.Contra.fgcolor = "black";
			bandera = true;
		}
		
	if (Contra1 = " ")
		{
			documento.registro.Contra1.fgcolor = "red";
			document.registro.Contra1.focus() 
			bandera = false;
		}		
	else
		{
			documento.registro.Contra1.fgcolor = "black";
			bandera = true;
		}
		
	if (bandera)
		{
			if (Contra = Contra1)
				{
					bandera = true;
					documento.registro.Contra1.fgcolor = "black";
				}
			else
				{
					bandera = false;
					documento.registro.Contra1.fgcolor = "red";
					document.registro.Contra1.focus() 
					alert('No coinciden los campos contraseña y validación de contraseña.')
				}
		}
		
	if (bandera)
		{
			alert ('el usuario que ha entrado en la pagina es: ' + Usuario +   ', y su  contraseña es: ' + Contra + ' con nombre: ' + Nombre);			
		}
	else
		{
			alert ('Rellene los campos en rojo')
		}
		
}


function actualizar() { 
	parent.modificar(document.body.scrollHeight); 
}

function modificar() { 
	var altura = document.body.scrollHeight; 
	
	if (altura < 500)
		{
			altura = 500;
		}
	parent.document.all.Cuerpo.style.height = altura; 		
}

function modificar1() { 
	var altura = document.body.scrollHeight; 
	var alt = 900;
	
	if (altura < alt)
		{
			altura = "alt"
		}
	parent.document.all.Cuerpo.style.height = altura; 
}


function setIframeHeight(iframeName) {
	//var iframeWin = window.frames[iframeName];
	var iframeEl = document.getElementById(iframeName)
	//var iframeEl = document.getElementById? document.getElementById(iframeName): document.all? document.all[iframeName]: null;
	if (iframeEl) {
		iframeEl.style.height = "auto"; // helps resize (for some) if new doc shorter than previous
		//var docHt = getDocHeight(iframeWin.document);
		// need to add to height to be sure it will all show
		var h = alertSize();
		var new_h = (h-148);
		iframeEl.style.height = new_h + "px";
		//alertSize();
	}
}

function maximizar(obj){ 
	obj.moveTo(0,0);
	obj.resizeTo(screen.width,screen.height);
}



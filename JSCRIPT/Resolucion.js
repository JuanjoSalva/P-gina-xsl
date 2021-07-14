function MostrarPanel(bloq) {
    var obj = document.getElementById(bloq);
	
	if (obj.style.display == "block")
		{
			obj.style.display = "none";
		}
	else
		{
			obj.style.display = "block";
		}
		
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

	var texto_estado = 'Bienvenido a la Escuela Infatil San Vicente';
	var posicion = 0;

	if (posicion < texto_estado.length) 
	   posicion ++;
	else
	   posicion = 1;
	string_actual = texto_estado.substring(posicion) + texto_estado.substring(0,posicion);
	window.status = string_actual;
	setTimeout("barra_estado()",50);

	//window.status='Bienvenido a la Escuela Infatil San Vicente';
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
	var altura = document.Cuerpo.scrollHeight; 
	
	if (altura < 500)
		{
			altura = 1200;
		}
	parent.document.all.Cuerpo.style.height = altura; 		
}

function modificar1() { 
	var altura = document.body.scrollHeight; 
	var alt = 1200;
	
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

function fill_table(month,month_length)
{ 
	alert ("entro con mes: " + month + " y long = " + month_length);
	alert ("firstDay.getDay " + firstDay.getDay());
	obj = document.getElementById('calendar');
	
	var start_day = firstDay.getDay();
	day=1
	// begin the new month table
	obj.innerHTML = "<TABLE BORDER=3 CELLSPACING=3 CELLPADDING=%3><TR>";
	obj.innerHTML ="<TD COLSPAN=7 ALIGN=center bgcolor=#00EEEE><B>"+month+"   "+year+"</B><TR>";
	/*document.calendar.write("<TABLE BORDER=3 CELLSPACING=3 CELLPADDING=%3><TR>");
	document.calendar.write("<TD COLSPAN=7 ALIGN=center bgcolor=#00EEEE><B>"+month+"   "+year+"</B><TR>");*/
	// column headings
	day_title("Lun");
	day_title("Mar");
	day_title("Mie");
	day_title("Jue");
	day_title("Vie");
	day_title("Sab");
	day_title("Dom");
	// pad cells before first day of month
	obj.innerHTML ="</TR><TR>";
	/*document.calendar.write("</TR><TR>")*/
	
	alert("Start day = " +start_day);
	for (var i=1;i<start_day;i++){
		obj.innerHTML = "<TD>";
		/*document.calendar.write("<TD>");		*/
	}
	// fill the first week of days
	for (var i=start_day;i<8;i++){
		obj.innerHTML ="<TD ALIGN=center bgcolor=#DDDDDD>"+day+"</TD>";
		/*document.calendar.write("<TD ALIGN=center bgcolor=#DDDDDD>"+day+"</TD>");*/
		day++;
	}
	obj.innerHTML ="<TR>";
	/*document.calendar.write("<TR>");*/
	// fill the remaining weeks
	
	alert ("day debe ser menor o igual a 31= " + day);
	while (day <= month_length) {
		
		for (var i=1;i<=7 && day<=month_length;i++){
			obj.innerHTML = "<TD ALIGN=center bgcolor=#DDDDDD>"+day+"</TD>";
			/*document.calendar.write("<TD ALIGN=center bgcolor=#DDDDDD>"+day+"</TD>");*/
			day++;
			alert("bucle i = " + i);
		}
		obj.innerHTML = "</TR><TR>";
		/*document.calendar.write("</TR><TR>")*/
		// the first day of the next month
		start_day=i;
	}
	obj.innerHTML = "</TR></TABLE><BR>";
	/*document.calendar.write("</TR></TABLE><BR>");*/
}

function day_title(day_name){
    /*document.calendar.write("<TD ALIGN=center WIDTH=35>"+day_name+"</TD>");*/	
	document.getElementById('calendar').innerHTML = "<TD ALIGN=center WIDTH=35>"+day_name+"</TD>";
}

function CreaCalendario(){
	
	var fecha=new Date();
	var dia_mes=fecha.getMonth() +1 ;

	switch (dia_mes)
	{
		case 1: 
			fill_table('Enero','31');
			break;
		case 2: 
			fill_table('Febrero','29');
			break;
		case 3: 
			fill_table('Marzo','31');
			break;
		case 4: 
			fill_table('Abril','30');
			break;
		case 5: 
		    fill_table('Mayo','31');
			break;
		case 6: 
			fill_table('Junio','30');
			break;
		case 7: 
			fill_table('Julio','31');
			break;
		case 8: 
			fill_table('Agosto','30');
			break;
		case 9: 
			fill_table('Septiembre','31');
			break;
		case 10: 
			fill_table('Octubre','30');
			break;
		case 11: 
			fill_table('Noviembre','31');
			break;
		case 12: 
			fill_table('Diciembre','30');
			break;
		default:
			alert("error de fecha");
			break;
	}
}


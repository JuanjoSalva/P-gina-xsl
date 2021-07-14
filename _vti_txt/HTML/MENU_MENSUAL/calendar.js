function PintarCalendario(bloq){
	var num = 0;
	BorramosFilas();
	
	var fecha=new Date();
	var dia_mes=fecha.getMonth() +1 ;
	var texto;
	
	switch (dia_mes)
	{
		case 1: 
			Repetir('Enero',31);
			texto = 'Enero';
			break;
		case 2: 
			Repetir('Febrero',29);
			texto = 'Febrero';
			break;
		case 3: 
			Repetir('Marzo',31);
			texto = 'Marzo';
			break;
		case 4: 
			Repetir('Abril',30);
			texto = 'Abril';
			break;
		case 5: 
		    Repetir('Mayo',31);
			texto = 'Mayo';
			break;
		case 6: 
			Repetir('Junio',30);
			texto = 'Junio';
			break;
		case 7: 
			Repetir('Julio',31);
			texto = 'Julio';
			break;
		case 8: 
			Repetir('Agosto',30);
			texto = 'Agosto';
			break;
		case 9: 
			Repetir('Septiembre',31);
			texto = 'Septiembre';
			break;
		case 10: 
			Repetir('Octubre',30);
			texto = 'Octubre';
			break;
		case 11: 
			Repetir('Noviembre',31);
			texto = 'Noviembre';
			break;
		case 12: 
			Repetir('Diciembre',30);
			texto = 'Diciembre';
			break;
		default:
			alert("error de fecha");
			break;
	}
	
	var div = document.getElementById("mes")
	
	
	div.innerHTML = texto;
	
}

function Repetir(texto,i){
	var dia = 0;
	var primera = true;
	var bandera = false;
	
	for (x = 1; x <= i; x++)
	{
		dia = dia +1;
		if (dia < 8)
		{
			bandera = false;
			if (primera)
			{
				bandera = true;
				primera = false;
			}
			
		}
		else
		{
			bandera = true;
			dia =1;
		}
		NuevaFila(texto,x,bandera,dia);
	}	
}

function NuevaFila(texto,id,bandera,dia)
{

	div = document.getElementById("menu")
	div.innerHTML = "";
	
	
  // obtenemos acceso a la tabla por su ID
  var TABLE = document.getElementById("tabla");
  //TABLE.style.background = "#33FFFE";
  
  // obtenemos acceso a la fila maestra por su ID
  var TROW = document.getElementById("celda");
  
  // tomamos la celda
  var content = TROW.getElementsByTagName("td");
  

  //alert("bandera = " + bandera + " el dia es : " + id);
  if (bandera)
  {
	  // creamos una nueva fila
	  var newRow = TABLE.insertRow(-1);
	  newRow.style.backgroundColor = "#FE9900";
	  
	  // creamos una nueva celda
	  var newCell = newRow.insertCell(newRow.cells.length);
	  newCell.innerHTML = id;	  
	  
	  if (newCell.addEventListener){
		//Si usa estandares (Mozilla)
		//newCell.addEventListener('click',function(event){ miFuncion(event.target.getAttribute(id));}, false);
		newCell.addEventListener('click',function(event){ miFuncion((id));}, false);
	  } else if (newCell.attachEvent){
		//IE SUCKS….
		//newCell.attachEvent('onclick', function(event){ miFuncion(event.srcElement.getAttribute(id));});
		newCell.attachEvent('onclick', function(event){ miFuncion((id));});
	  }

  }
  else
  {
	// creamos una nueva celda
	
	var tlin = document.getElementById("tabla").rows.length; 
	var lin = document.getElementById("tabla").rows[tlin-1]; 
	var td = document.createElement("td"); 

	td.appendChild(document.createTextNode("celda " + parseInt(Math.random()*100))); 
	lin.appendChild(td);
	td.innerHTML = id;
	tdid = id;
	
	
	if (td.addEventListener){
		//Si usa estandares (Mozilla)
		//td.addEventListener('onclick',function(event){ miFuncion(event.target.getAttribute(id));}, false);
		td.addEventListener('onclick',function(event){ miFuncion((id));}, false);
	} else if (td.attachEvent){
		//IE SUCKS….
		//td.attachEvent('onclick', function(event){ miFuncion(event.srcElement.getAttribute(id));});
		//td.attachEvent('onclick', function(event){ miFuncion((id));});
		td.attachEvent('onclick', function(event){ miFuncion((id));});
		
	}
  }
   
  //creamos un id para la celda para que cuando el usuario esté sobre ella el id sea el mismo que su valor= el día.
  newID = id;  
}
 
function miFuncion(id){
	loadXMLDoc("Menu_M.xml",id);
} 

function loadXMLDoc(url,id)
{

	alert ('entra en funcion loadXMLDoc');

	
	/* aqui los if del id */
	if ((id > 0)  &&  (id < 8))
	{
		valor = id;
	}
	
	else if	((id > 7) && (id < 15))
	{
		valor = id-7;
	}
	
	else if	((id > 14) && (id < 22))
	{
		valor = id-14;
	}
	
	else if	((id > 21) && (id < 29))
	{
		valor = id-21;
	}
	else
	{
		valor = id -28;
	}
	
	
	alert ('valor = ' + valor);
	
	var fecha = new Date();
	var dia_mes = fecha.getMonth() +1 ;
	var anyo = fecha.getFullYear();
	var div = document.getElementById("menu");
	var xmlhttp;
	var menu, menu_dia, menu_comida, menu_merienda;

	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
		alert ('XMLHttpRequest');
	  }
	else
	  {// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
		alert ('ActiveXObject');
	  }
	  
	/*xmlhttp.onreadystatechange=function()
	{*/
		alert('entra en la funcion onreadystatechange');	
		/*if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{*/
			alert ('cumple condicion state==4 y status = 200');
			var menu_dia= id + '/' + dia_mes + '/' + anyo;
			
			/*menu=xmlhttp.responseXML.documentElement.getElementsByTagName("Menu_M");*/
			menu=xmlhttp.responseXML.documentElement.getElementsByTagName("pagina");
			for (i=0;i<menu.length;i++)
			{	
				alert('entra en el for');
				try
				{
					var menu_comida=menu[i].getElementsByTagName("comida").text;
					var menu_merienda=menu[i].getElementsByTagName("merienda").text;
				}
				catch (er)
				{
					//txt=txt + "<td>&nbsp;</td>";
				}
				
			}
			div.innerHTML = "dia: " + menu_dia + "\n\r comida: "  + menu_comida +  "\n\r merienda: " + menu_merienda;
    
		/*}
		else
		{
			alert ('no cumple condiciones');
			var menu_dia= id + '/' + dia_mes + '/' + anyo;
			alert ('día: ' + menu_dia);
		}*/
	/*}*/
		/*alert ('url: ' + url );*/
		xmlhttp.open("GET","Menu_M.xml",true);
		xmlhttp.send();	
		div.innerHTML = "dia: " + menu_dia + "\n\r comida: "  + menu_comida +  "\n\r merienda: " + menu_merienda;
}
	
/*
function cargarXMLDoc(archivoXML) {

}*/

 
function BorramosFilas(){
  // obtenemos la tabla
  var TABLE = document.getElementById("tabla");
  
  // si tenemos mas de una fila, borramos
  if(TABLE.rows.length > 1) 
  {
	TABLE.deleteRow(TABLE.rows.length-1);
  }
}



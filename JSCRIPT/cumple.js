function PintarCumples(bloq){
	var num = 0;
	BorramosFilaCumples();
	
	var fecha=new Date();
	var dia_mes=fecha.getMonth() +1 ;

	switch (dia_mes)
	{
		case 1: 
			Repetir('Enero',31);
			break;
		case 2: 
			Repetir('Febrero',29);
			break;
		case 3: 
			Repetir('Marzo',31);
			break;
		case 4: 
			Repetir('Abril',30);
			break;
		case 5: 
		    Repetir('Mayo',31);
			break;
		case 6: 
			Repetir('Junio',30);
			break;
		case 7: 
			Repetir('Julio',31);
			break;
		case 8: 
			Repetir('Agosto',30);
			break;
		case 9: 
			Repetir('Septiembre',31);
			break;
		case 10: 
			Repetir('Octubre',30);
			break;
		case 11: 
			Repetir('Noviembre',31);
			break;
		case 12: 
			Repetir('Diciembre',30);
			break;
		default:
			alert("error de fecha");
			break;
	}
}

function RepetirFilaCumple(texto,i){
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
		NuevaFilaCumple(texto,x,bandera,dia);
	}	
}

function NuevaFilaCumple(texto,id,bandera,dia)
{
  // obtenemos acceso a la tabla por su ID
  var TABLE = document.getElementById("tabla");
  //TABLE.title = texto;
  
  // obtenemos acceso a la fila maestra por su ID
  var TROW = document.getElementById("celda");
  
  // tomamos la celda
  var content = TROW.getElementsByTagName("td");
  

  //alert("bandera = " + bandera + " el dia es : " + id);
  if (bandera)
  {
	  // creamos una nueva fila
	  var newRow = TABLE.insertRow(-1);
	
	  
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
		td.attachEvent('onclick', function(event){ miFuncion((id));});
	}
  }
 


  
  //creamos un id para la celda para que cuando el usuario esté sobre ella el id sea el mismo que su valor= el día.
  newID = id;
  
}
 
 
function miFuncion(id){
	alert ('llamada a la funcion desde la tabla pinchando en la celda con el dia: ' + id);
} 
 
function BorramosFilaCumple() 
{
  // obtenemos la tabla
  var TABLE = document.getElementById("tabla");
  
  // si tenemos mas de una fila, borramos
  if(TABLE.rows.length > 1) 
  {
	TABLE.deleteRow(TABLE.rows.length-1);
  }
}

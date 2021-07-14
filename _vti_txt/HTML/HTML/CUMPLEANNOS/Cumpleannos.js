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
	div = document.getElementById("menu");
	//div.innerHTML = "pues eso, aquí el menu de xml";
	
	//var DocumentoXml = new ActiveXObject("microsoft.xmldom");
    //DocumentoXml.load("Menu_M.xml");
	//var estado = DocumentoXml.readyState;
	//var errorcin = DocumentoXml.parseError;
	
	
	if (id > 7) 
	{
		var valor = (7 - (id/7));
		valor = Math.floor(valor);
	}
	else
	{
		var valor = id;
	}
	
	
	var xmlDoc=new ActiveXObject("microsoft.xmlDom");
	xmlDoc.load("Menu_M.xml");
	var raiz=xmlDoc.documentElement;
	
	
	// Si no hay errores leyendo y cargando
	// el documento XML
	//if(errorcin.errorCode==0)
	//{
		//var raiz = DocumentoXml.documentElement;
		alert ('el objeto raiz es: ' + raiz);
		/*for(i=0;i<raiz.childNodes.length;i++){
			alert(''+ raiz.childNodes.item(i).childNodes.item(0).text);
            alert(''+ raiz.childNodes.item(i).childNodes.item(1).text);
			alert(''+ raiz.childNodes.item(i).childNodes.item(2).text);
          }*/	  

		var nodo=raiz.childNodes.item(indice);
		var menu_dia = nodo.childNodes.item(id).text;
		var menu_comida = nodo.childNodes.item(id).text;
		var menu_merienda = nodo.childNodes.item(id).text;
		//nommarca=nodo.childNodes.item(1).text;
		//document.body.style.backgroundImage='url(images/fdo'+nodo.childNodes.item(0).text+'.gif)';
		//document.imag.src='images/logo'+nodo.childNodes.item(0).text+'.gif';

		//var menu_dia = raiz.childNodes.item(valor).childNodes.item(0).text;
		//var menu_comida = raiz.childNodes.item(valor).childNodes.item(1).text;
		//var menu_merienda = raiz.childNodes.item(valor).childNodes.item(2).text;
		  
		div.innerHTML = 'Fecha: ' + id + "/n" + 'Comida: ' + menu_comida + "/n" + 'Merienda: ' + menu_merienda;

	//}
	//else
	//{
	//	alert ('Error');
	//}
	
	//dia
	//var obj_dia = DocumentoXml.getElementsByTagName("Pie")[0].firstChild.nodeValue;
				
	//comida
	//var obj_comida = DocumentoXml.getElementsByTagName("Pie")[0].nextSibling.nodeValue;
	
	//merienda
	//var obj_merienda = DocumentoXml.getElementsByTagName("Pie")[0].lastChild.nodeValue
	
	
	
	//var men = "comida: " + obj_comida + "/n" + "merienda: " + obj_merienda
	
	//div.innerHTML = obj_dia ;

	return true;
} 
 
function BorramosFilas(){
  // obtenemos la tabla
  var TABLE = document.getElementById("tabla");
  
  // si tenemos mas de una fila, borramos
  if(TABLE.rows.length > 1) 
  {
	TABLE.deleteRow(TABLE.rows.length-1);
  }
}

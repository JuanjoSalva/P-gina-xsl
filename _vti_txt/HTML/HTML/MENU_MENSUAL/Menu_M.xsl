<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Cabecera</title>
			<link rel="stylesheet" type="text/css" href="../../CSS/Hoja1.css"/>
			<Script type="text/javascript" src="../../JSCRIPT/Resolucion.js"/>	
			<Script type="text/javascript" src="Calendar.js"/>	
		</head>
	  
		<body class = "azul" onload = "modificar();PintarCalendario();">
	  
			<div id = "padre" WIDTH="100%" HEIGHT= "100%">
				
				<div class = "Panel_Izquierdo flota">		 
					<marquee direction="up"> 
						<font color = "black">
							ESCUELA INFANTIL 
						</font>
					</marquee>
				</div>
				
				<!--div class = "Panel_Central2 flota"-->
				<div class = "Panel_Central10 flota">
					<div class = "parrafo">
						<xsl:value-of select = "pagina/cuerpo/texto"/>
					</div>
					
					<div class = "parrafo margen flota" id= "calendar">
						<b> <font color = "blue">
							<div align = "center" class = "parrafo" id="mes">
							
							</div>
						</font></b>
						<Table id= "tabla" align = "center" border = "2" class = "flota" background = "#FE9900">
							<tr id= "celda">
								<th id="td1">
									LUNES
								</th>
								<th id="td2">
									MARTES
								</th>
								
								<th id="td3">
									MIÉRCOLES
								</th>
								
								<th id="td4">
									JUEVES
								</th>
								
								<th id="td5">
									VIERNES
								</th>								
								
								<th id="td6">
									SÁBADO
								</th>
								
								<th id="td7">
									DOMINGO
								</th>								
							</tr>
							
							<tr>
								<td>
									---
								</td>
								<td>
									---
								</td>
								<td>
									---
								</td>								
								<td>
									---
								</td>								
								<td>
									---
								</td>								
								<td>
									---
								</td>								
								<td>
									---
								</td>								
							</tr>
						</Table>
					</div>
					
					<div class = "menu parrafo margen4" id="menu">
					
					</div>
					
				</div>
				
				
				
				<div class = "Panel_Derecho">
					<marquee direction="down"> 
						<font color = "black">
							DUENDE
						</font>
					</marquee>
				</div>
			</div>
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>
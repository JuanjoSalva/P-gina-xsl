<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Mapa</title>
			
			<link rel="stylesheet" type="text/css" href="../../CSS/Hoja1.css"/>
			<Script type="text/javascript" src="../../JSCRIPT/Resolucion.js"/>	
		</head>
	  
		<body class = "azul" onload = "modificar()">
			<div id = "padre" WIDTH="100%" HEIGHT= "100%">
			
				<div class = "Panel_Izquierdo flota">
					<marquee direction="up"> 
						<font color = "black">
							ESCUELA INFANTIL 
						</font>
					</marquee>
				</div>
				
				<!-- Panel Central -->
				<!--div class = "Panel_Central3 flota"-->		
				<div class = "Panel_Central10 flota">		
					<H1 align = "center">
						<xsl:value-of select ="pagina/titulo"/>
					</H1>	
					
					<img width = "300" height="260" valign = "top" align="middle" hspace="15" vspace="15" >
						<xsl:attribute name = "src">
							<xsl:value-of select ="pagina/cuerpo/mapa"/>
						</xsl:attribute>
					</img>
					
					<br/>
					<b>Calle:</b>
					<xsl:value-of select ="pagina/cuerpo/calle"/>
					,
					<xsl:value-of select ="pagina/cuerpo/numero"/>
					,
					<xsl:value-of select ="pagina/cuerpo/piso"/>
					<br/><b>CP:</b>
					<xsl:value-of select ="pagina/cuerpo/cp"/>
					<br/><b>Tlf:</b>
					<xsl:value-of select ="pagina/cuerpo/telefono"/>
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
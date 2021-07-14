<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Cumpleaños</title>
			
			<link rel="stylesheet" type="text/css" href="../../CSS/hoja1.css"/>
			<Script type="text/javascript" src="../../JSCRIPT/Resolucion.js"/>	
		</head>
	  
		<body class = "azul" onload = "modificar();PintarCumples();">	  
			<div id = "padre" WIDTH="100%" HEIGHT= "100%">
				
				<div class = "Panel_Izquierdo flota">
					<marquee direction="up"> 
						<font color = "black">
							ESCUELA INFANTIL 							
						</font>
					</marquee>
				</div>
				
				<div class = "Panel_Central3 flota">				
					<H1 align = "center">
						<xsl:value-of select ="pagina/titulo"/>
					</H1>
					
					<div class = "flota margen1" widh = "30%">
						<img width = "220" height="180" valign = "top" align="middle" hspace="15" vspace="15" >
							<xsl:attribute name = "src">
								<xsl:value-of select ="pagina/cuerpo/foto"/>
							</xsl:attribute>
						</img>												
					</div>
					
					<div class = "margen">
						<b><i>
							<xsl:value-of select ="pagina/cuerpo/texto"/>
						</i></b>
					</div>					
				</div>
				
				<div class = "Panel_Derecho">
					<marquee direction="down"> 
						<font color = "black">
							DUENDES 
						</font>
					</marquee>
				</div>
			</div>
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>
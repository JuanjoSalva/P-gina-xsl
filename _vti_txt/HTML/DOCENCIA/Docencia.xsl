<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Docencia</title>
			
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
				<!--div class = "Panel_Central2 flota"-->	
				<div class = "Panel_Central10 flota">		
					<H1 align = "center">
						<xsl:value-of select ="pagina/titulo"/>
					</H1>
					
					<br/>					
					<xsl:value-of select = "pagina/cuerpo/texto1"/>
					<br/>
					<xsl:value-of select = "pagina/cuerpo/texto2"/>
					
					<xsl:for-each select ="pagina/cuerpo/punto">
							<ul>
								<xsl:value-of select = "."/>
							</ul>
					</xsl:for-each>		
					
					<br/>
					<xsl:value-of select = "pagina/cuerpo/texto3"/>
					<br/><br/>
					<xsl:value-of select = "pagina/cuerpo/texto4"/>
					
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
<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Contacta</title>
			
			<link rel="stylesheet" type="text/css" href="../../CSS/hoja1.css"/>
			<Script type="text/javascript" src="../../JSCRIPT/Resolucion.js"/>	
		</head>
	  
		<!--body class = "azul" onload = "modificar()"-->
		<body class = "Fondo_duendes" onload = "modificar">
			<div id = "padre" WIDTH="100%" HEIGHT= "100%">
			
				<!--div class = "Panel_Izquierdo flota">
					<marquee direction="up"> 
						<font color = "black">
							ESCUELA INFANTIL 
						</font>
					</marquee>
				</div-->
			
				<!-- Panel Central -->
				<div class = "Panel_Central10 flota">
					<div class = "margen1">
						<h1 align="center">		
							<!--font size = "24pt"-->
								<xsl:value-of select ="pagina/cabecera/titulo"/>
							<!--/font-->
						</h1>					
					</div>
					<br/><br/><br/><br/>
					
					<div class = "letra_blanca">
						<div class = "margen1">
							<xsl:value-of select ="pagina/cuerpo/rotulo"/>
						</div>	
						<br/>	
						
						<div class = "margen1">
							<xsl:value-of select ="pagina/cuerpo/calle"/>
						</div>
						<br/>
						<div class = "margen1">
							<xsl:value-of select ="pagina/cuerpo/localidad"/>
						</div>
						<br/>
						<div class = "margen1 flota">
							<xsl:value-of select ="pagina/cuerpo/provincia"/>
						</div>
						
						<div class = "margen3">
							<xsl:value-of select ="pagina/cuerpo/telefono"/>
						</div>
					</div>
					
					<div class = "parrafo">
						<div class = "margen2 flota tamanno1 margen borde1">
							<a> 
								<xsl:attribute name="href">
									mailto: <xsl:value-of select="pagina/pie/correo"/>? 									
									subject: <xsl:value-of select ="pagina/pie/asunto"/>
								</xsl:attribute> 
								
								<b><xsl:value-of select="pagina/pie/correo"/></b>
							</a>							
							
						</div>
					</div>
				</div>
				
				<!--div class = "Panel_Derecho">
					<marquee direction="down"> 
						<font color = "black">
							DUENDES
						</font>
					</marquee>
				</div-->
			</div>
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>
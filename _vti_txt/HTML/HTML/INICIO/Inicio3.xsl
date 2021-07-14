<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Inicio</title>
			<link rel="stylesheet" type="text/css" href="../../CSS/hoja1.css"/>
			<Script type="text/javascript" src="../../JSCRIPT/Resolucion.js"/>	
		</head>
	  
		<!--body class = "azul" onload = "modificar()"-->
		<body onload = "modificar()" class = "Fondo_duendes3">
			<div id = "padre" WIDTH="100%" HEIGHT= "100%">
				<div class = "margen1 noflota">
					<!--div class = "flota margen1">
						<img width = "220" height="180" valign = "top" align="middle" hspace="15" vspace="15" >
							<xsl:attribute name = "src">
								<xsl:value-of select ="pagina/cuerpo/foto1"/>
							</xsl:attribute>
						</img>
					</div>
			
					<div class = "flota margen">
						<H1 align = "center">
							<br/>
							<xsl:value-of select ="pagina/cuerpo/texto1"/>
							
							<br/><br/><br/>
							<xsl:value-of select ="pagina/cuerpo/texto2"/>
						</H1>	
					</div>
					
					<div class = "margen4">
						<img width = "220" height="180" valign = "top" align="middle" hspace="15" vspace="15" >
							<xsl:attribute name = "src">
								<xsl:value-of select ="pagina/cuerpo/foto2"/>
							</xsl:attribute>
						</img>
					</div!-->
				</div>
					
				
			</div>
			
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>
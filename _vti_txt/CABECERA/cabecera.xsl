<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Cabecera</title>
			
			<link rel="stylesheet" type="text/css" href="../CSS/hoja1.css"/>
			<Script type="text/javascript" src="../JSCRIPT/Resolucion.js"/>	
		</head>
	  
		<body class = "amarillo" onload = "modificar()">
		<!--body class = "marron" onload = "modificar()"-->
		
			<div id = "padre" WIDTH="100%" HEIGHT= "100%">
				<div align = "center">
					<h1 align="center">	
						<a TARGET = "Cuerpo" href = "../HTML/INICIO/Inicio.xml">
							<font size = "11pt">
								<b>
									<xsl:value-of select ="pagina/cuerpo/texto1"/>
								</b>
							</font>	
							
							<font size = "32pt" face = "Gigi">
								<b>
									<xsl:value-of select ="pagina/cuerpo/texto2"/>
								</b>
							</font>
							
						</a>
					</h1>
				</div>
	
				<div>
					<xsl:for-each select ="pagina/pie/boton">
						<div class = "flota nomargen">
							
							<a target="Cuerpo">
								
									<xsl:attribute name = "HREF">
										<xsl:value-of select = "./ruta"/>
									</xsl:attribute>
									
									<img width = "95" height="65" valign = "top" align="middle" hspace="15" vspace="15" >
										<xsl:attribute name = "src">
											<xsl:value-of select ="./color"/>
										</xsl:attribute>			
									</img>	
							</a>
						</div>
					</xsl:for-each>		
					
					<div class = "margen" topalign = "middle">
						<a TARGET = "_blank">								
							<xsl:attribute name = "HREF">
								<xsl:value-of select = "pagina/pie/link/ruta"/>
							</xsl:attribute>
									
							<font color = "blue"><b><i>
							
								<xsl:value-of select ="pagina/pie/link/texto"/>
							</i></b></font>
						</a>
					</div>
				</div>
			</div>
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>
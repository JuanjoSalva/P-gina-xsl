<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Talleres</title>
		
		<link rel="stylesheet" type="text/css" href="../../../CSS/Hoja1.css"/>
		<Script type="text/javascript" src="../../../JSCRIPT/Resolucion.js"/>

      </head>
	  
      <body class = "amarillo" onload = "modificar()">
	  
		<div height = "100%">
			<div class = "Panel_Izquierdo flota">
			
			</div>
			
			<div class = "Panel_Central flota">		
					<a name = "Inicio">
						<h1 align="center">
							<xsl:value-of select ="pagina/encabez/titulo"/>
						</h1>
					</a>				
					
					<br/><br/><br/>
					
					<xsl:value-of select ="pagina/cuerpo/texto2"/>
					
					<br/><br/>
					
					<xsl:for-each select ="pagina/cuerpo/taller">			
						<div class = "margen1 borde3">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select ="./direccion"/>
								</xsl:attribute>
								<xsl:value-of select ="./nombre"/>
							</a>
						</div>
						<br/><br/>
					</xsl:for-each>
					
					
					<br/>
					<br/>
					
					<div class = "nomargen">
						<a>
							<xsl:attribute name="HREF">
								#Inicio
							</xsl:attribute>
							<xsl:value-of select ="pagina/pie/link1"/>
						</a>		
					</div>

					<div class = "margen5">
						<a>
							<xsl:attribute name="HREF">
								../INICIO/Inicio.xml
							</xsl:attribute>
							<xsl:value-of select ="pagina/pie/link2"/>							
						</a>		
					</div>
					<br/><br/><br/>
			</div>
			
			
			<div class = "Panel_Derecho">
			
			</div>
		</div>
		
		
		
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
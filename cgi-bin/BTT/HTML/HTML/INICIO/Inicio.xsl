<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Inicio</title>
		
		<link rel="stylesheet" type="text/css" href="../../../CSS/Hoja1.css"/>
		<Script type="text/javascript" src="../../../JSCRIPT/Resolucion.js"/>	
      </head>
	  
	  <body class = "negro" onload = "modificar()">
	  
	  <div id = "padre" WIDTH="100%" HEIGHT= "100%">
	  	  
        <div class = "Panel_Izquierdo flota">
		 
		</div>
		
		<!-- Panel Central -->
		<div class = "Panel_Central flota">		
				<a name = "Inicio">
					<h1 align="center">					    
						<xsl:value-of select ="pagina/cabecera/titulo"/>
					</h1>					
				</a>				
				
				<br/><br/>				
		
				<div class = "parrafo2">					
					<b>  <xsl:value-of select ="pagina/cuerpo/texto"/> </b> 
				</div>	
				
				<br/><br/>
				
				
				<marquee>
					
					<b> <xsl:value-of select ="pagina/cuerpo/marque"/> </b> 
				</marquee>
				<br/><br/>
				
				<div class = "nomargen flota">
					<a>
						<xsl:attribute name="HREF">
							../REGISTRO/Registro.xml
						</xsl:attribute>
						<font color = "white">
							<xsl:value-of select ="pagina/pie/link1"/>
						</font>
					</a>
					
				</div>
				
				<div class = "margen3">
					<a>
						<xsl:attribute name="HREF">
							../INICIO/Inicio.xml
						</xsl:attribute>
					    <font color = "white">
							<xsl:value-of select ="pagina/pie/link2"/>
						</font>
					</a>
				</div>
				
				
		
		</div>
		
        
		<div class = "Panel_Derecho">
			
		</div>
	
	  
	  </div>
		
		
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
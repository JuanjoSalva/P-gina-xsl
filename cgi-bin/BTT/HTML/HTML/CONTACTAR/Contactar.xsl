<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Contacto</title>
		
		<link rel="stylesheet" type="text/css" href="../../../CSS/Hoja1.css"/>
		<Script type="text/javascript" src="../../../JSCRIPT/Resolucion.js"/>	
      </head>
	  
	  <body class = "amarillo" onload = "modificar()">
	  
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
		
				<div class = "margen">	
					<font size = "4%">
					<b> Nombre: </b> <xsl:value-of select ="pagina/cuerpo/nombre"/><br/><br/>
					<b> Teléfono: </b> <xsl:value-of select ="pagina/cuerpo/telefono"/><br/><br/>
					<b> Correo: </b> <xsl:value-of select ="pagina/cuerpo/correo"/><br/><br/>
					</font>
				</div>	
		
				<br/><br/><br/>
				
				<div class = "margen1">
					<b><font size = "5%">Contactar: </font></b>					  
					<a>
    					<xsl:attribute name = "href">
							mailto:
							<xsl:value-of select ="pagina/cuerpo/correo"/>
						</xsl:attribute>	
					
						<font color="brown" size="4%"> 						
							<xsl:value-of select ="pagina/cuerpo/correo"/>					  
						</font>
					</a>
				</div>
				
				
				<br/><br/><br/><br/>
				
				<div class = "nomargen flota">
					<a>
						<xsl:attribute name="HREF">
							#Inicio
						</xsl:attribute>
						<xsl:value-of select ="pagina/pie/link1"/>
					</a>
				</div>
				
				<div class = "margen3">
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
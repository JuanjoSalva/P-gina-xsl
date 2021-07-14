<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>RutasFacil</title>
		
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
		
				<xsl:value-of select ="pagina/cabecera/texto"/>
				<b>
					<div class = "margen2">
						<ol>
							<xsl:for-each select ="pagina/cuerpo/ruta">
								<li>						
									<xsl:value-of select ="./nombre"/>						
								</li>
							</xsl:for-each>
						</ol>
					</div>
				</b>
				
				<xsl:for-each select ="pagina/cuerpo/ruta">
					
					<b><xsl:value-of select ="./nombre"/></b>
					
					<br/><br/>
					
					<img>
						<xsl:attribute name = "src">
							<xsl:value-of select ="./mapa"/>
						</xsl:attribute>
					</img>
					<br/>
					<xsl:value-of select ="./texto1"/><br/>
					<img>
						<xsl:attribute name = "src">
							<xsl:value-of select ="./imagen"/>
						</xsl:attribute>
					</img>
					<br/>
					
					<b>Grado de dificultad:</b> <xsl:value-of select ="./grado"/><br/>
					<b>Distancia recorrida:</b> <xsl:value-of select ="./distancia"/><br/>
					<b>Altitud min:</b> <xsl:value-of select ="./altitud_min"/><b>, max:</b> <xsl:value-of select ="./altitud_max"/><br/>
					<b>Desnivel acum. subiendo:</b> <xsl:value-of select ="./des_sub"/><b>, bajando:</b> <xsl:value-of select ="./des_baj"/><br/>
					<br/><br/>
					
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
					<!--HR SIZE = "5" color = "blue" noshade/-->
					<hr/>
				</xsl:for-each>
		</div>
		
        
		<div class = "Panel_Derecho">
			
		</div>
	
	  
	  </div>
		
		
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
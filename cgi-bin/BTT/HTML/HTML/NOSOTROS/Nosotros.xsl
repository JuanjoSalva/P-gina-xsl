<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Nosotros</title>
		
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
					
					<br/>
					<xsl:value-of select ="pagina/encabez/texto1"/>
					<br/>				
					
					<ul>
						<xsl:for-each select ="pagina/encabez/lista">
							<li>
								<xsl:value-of select ="."/>
							</li>
						</xsl:for-each>
					</ul>
					
					
					<br/>
					<xsl:value-of select ="pagina/encabez/texto2"/>
					<br/><br/><br/>
					<xsl:for-each select ="pagina/cuerpo/foto">			
						<xsl:variable name = "lista" select = "position()"/>
						
						<xsl:if test="$lista mod 2 != 0">
							<div class = "margen1 flota">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select ="."/>
									</xsl:attribute>
									
									<img width = "220" height="180" valign = "top" align="middle" hspace="15" vspace="15">
										<xsl:attribute name = "src">
											<xsl:value-of select ="."/>
										</xsl:attribute>				
									</img>
								</a>
							</div>
						</xsl:if> 
						
						<xsl:if test="$lista mod 2 = 0">
							<div class = "margen5 noflota">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select ="."/>
									</xsl:attribute>
									
									<img width = "220" height="180" valign = "top" align="middle" hspace="15" vspace="15">
										<xsl:attribute name = "src">
											<xsl:value-of select ="."/>
										</xsl:attribute>				
									</img>
								</a>
							</div>
						</xsl:if> 
						
						
					</xsl:for-each>
					
					
					<br/>
					<br/>
					
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
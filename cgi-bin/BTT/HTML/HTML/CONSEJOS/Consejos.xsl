<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Consejos</title>
			
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
								<xsl:value-of select ="pagina/encabez/titulo"/>
							</h1>					
						</a>				
						
						<br/><br/>
						<xsl:value-of select ="pagina/encabez/texto"/>
						
						<br/><br/>
						
						<xsl:for-each select ="pagina/cuerpo/par">
						    <xsl:variable name = "titulo1" select = "./titulo1"/>
							<xsl:variable name = "texto1" select = "./texto1"/>
							<xsl:variable name = "imagen1" select = "./imagen1"/>
							<xsl:variable name = "imagen2" select = "./imagen2"/>
							<xsl:variable name = "consejo" select = "./consejo"/>
						
							<div class="parrafo nomargen"  style="clear:both;" >
								<xsl:if test="$titulo1  != ''">
									<b><xsl:value-of select ="$titulo1"/></b><br/><br/>
								</xsl:if>							
							
								<xsl:if test="$texto1  != ''">
									<xsl:value-of select ="$texto1"/><br/><br/>
								</xsl:if>
								
								<xsl:if test="$imagen1  != ''">
									<div class = "flota margen">
										<img>
											<xsl:attribute name = "src">
												<xsl:value-of select ="$imagen1"/><br/><br/>
											</xsl:attribute>
										</img>
									</div>
								</xsl:if>
								
								<xsl:if test="$imagen2  != ''">
									<div class = "flota margen">
										<img>
											<xsl:attribute name = "src">
												<xsl:value-of select ="$imagen2"/><br/><br/>
											</xsl:attribute>
										</img>
									</div>
								</xsl:if>
								
															
								<xsl:if test="$consejo  != ''">
									<xsl:value-of select ="$consejo"/><br/><br/>
								</xsl:if>
							</div>
						</xsl:for-each>
						
						<br/><br/>
						
						<div class = "margen1 flota flota">
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
						<br/><br/><br/><br/><br/>
						
				</div>
				
				
				<div class = "Panel_Derecho">
					
				</div>
		
			</div>
		
		
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>
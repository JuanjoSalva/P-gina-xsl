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
					<a name = "Inicio">
						<h1 align="center">
							<xsl:value-of select ="pagina/titulo"/>
						</h1>					
					</a>				
					<br/>
						
					<div class = "letra_blanca">
						<xsl:for-each select ="pagina/elem">
							<xsl:variable name = "var1" select = "./valor"/>
							<xsl:variable name = "var2" select = '0'/>
							<xsl:variable name = "var3" select = '1'/>
							
							<div class = "margenmedio" widh = "30%">
								<xsl:if test="$var1 = $var2">
									<xsl:value-of select= "./tarifa/concepto"/>
									----------------------------
									<xsl:value-of select= "./tarifa/precio"/>
									<xsl:value-of select= "./tarifa/moneda"/>
								</xsl:if> 
								
								<xsl:if test="$var1 = $var3">
									<br/>
									<xsl:value-of select= "./txt"/>
									<br/><br/>
									<xsl:for-each select ="./tarifa">
										-
										<xsl:value-of select= "./concepto"/>
									----------------------------
									<xsl:value-of select= "./precio"/>
									<xsl:value-of select= "./moneda"/>
									<br/><br/>
									</xsl:for-each>
									
								</xsl:if> 

							</div>
							<br/>
						</xsl:for-each>
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
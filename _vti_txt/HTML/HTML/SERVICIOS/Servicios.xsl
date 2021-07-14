<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Servicios</title>
			
			<link rel="stylesheet" type="text/css" href="../../CSS/hoja1.css"/>
			<Script type="text/javascript" src="../../JSCRIPT/Resolucion.js"/>	
		</head>
	  
		
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
							<div class = "margen2">
								<xsl:value-of select ="galeria/titulo"/>
							</div>
						</h1>					
					</a>				
					<br/>
					
					<div class = "margen">
						<xsl:value-of select ="galeria/texto1"/>
					</div>
					
					<br/>				
					
					<!-- Este div es general y agrupa todo -->
					<div>					
						<!-- Lista de Categorias -->
						<ol TYPE = 'A' start = '1'>
							<!-- Bucle general por categoria -->
							<xsl:for-each select ="galeria/categoria">
								<xsl:variable name = "ident" select = "./id"/>							
								
								<!-- Este  div agrupa las categorias-->
								<div id="Id_Categoria" style="display:block;">
									<li>
										<input class = "boton">
											<xsl:attribute name="type">button</xsl:attribute>
											<xsl:attribute name="name">tema</xsl:attribute>
											<xsl:attribute name="value">
												<xsl:value-of select="./tema"/>
											</xsl:attribute>
											<xsl:attribute name="onclick"> MostrarPanel ('<xsl:value-of select="$ident"/>')</xsl:attribute>										
										</input>
									</li>								
									
									<!-- Este div agrupa los temas -->
									<div style="display:none;" class = "margen2"><xsl:attribute name="id"> <xsl:value-of select="$ident"/></xsl:attribute>
										<ol TYPE = 'I' start = '1'>
										<xsl:for-each select ="./lista">														
												
											<xsl:variable name = "lista" select = "./id1"/>
											
											<li>
												<input class = "boton1">			
													<xsl:attribute name="type">button</xsl:attribute>
													<xsl:attribute name="name">lista</xsl:attribute>
													<xsl:attribute name="value">
														<xsl:value-of select="./texto"/>
													</xsl:attribute>
													<xsl:attribute name="onclick"> MostrarPanel ('<xsl:value-of select="$ident"/><xsl:value-of select="$lista"/>') </xsl:attribute>												
												</input>									
											</li>
											<br/>
											
																		
											<br/>
											<!-- Este div agrupa las fotos -->
											<div style="display:none;" class = "nomargen borde1 letra_blanca"><xsl:attribute name="id"> <xsl:value-of select="$ident"/><xsl:value-of select="$lista"/> </xsl:attribute>
												<xsl:for-each select ="./txt">
													<xsl:value-of select ="."/>
													<br/>
												</xsl:for-each>
												<br/>
											<!-- Fin div Fotos -->
											</div>
										</xsl:for-each>
										</ol>
									<!-- Fin div Categorias -->
									</div>
									
								<!-- Fin div Temas -->
								</div>
								
							<!-- Fin blucle general -->
							</xsl:for-each>
						<!-- Fin Lista de Categorias -->
						</ol>
						
					<!-- Fin Div General -->
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
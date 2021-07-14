<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
		<head>
			<title>Escuela Infantil Duendes</title>
			
			<meta http-equiv="X-UA-Compatible" content="IE=9" /> 
			<link rel="stylesheet" type="text/css" href="../../../CSS/screen.css"/>
			<link rel="stylesheet" type="text/css" href="../../../CSS/hoja1.css"/>
			<Script type="text/javascript" src="../../../JSCRIPT/Resolucion.js"/>
		</head>
		
		<body>
			<div id="wrapper">
				<div id="header">
					<table width = "100%">
						<tr>
							<td>
								<div id="logo">
									<h1>
										<A TARGET = "Cuerpo" href = "../ESCUELA/escuela.xml">
											<xsl:value-of select ="galeria/texto1"/>
										</A>
									</h1>
								</div>
							</td>
							
						</tr>
					</table>
					<div class="clr"></div>
				</div>
				<div class="content">
					<ul id="menu">
							
							<li>
								<a href="../ESCUELA/escuela.xml">
								<div class = "escuela">								
									Escuela
								</div>
								</a>
							</li>
							
							<li>
								<a href="../../PAPIS/EXTRA/extra.xml">
								<div class = "papis">
									Papis
								</div>
								</a>
							</li>
							
							<li>
								<a href="../../AYUDA/GUIA/guia.xml">
								<div class = "ayuda">
									Te Ayudamos
								</div>
								</a>
							</li>
							
							<li>
								<a href="../../ADMISION/admision.xml">
								<div class = "matricula">
								Admisión
								</div>
								</a>
							</li>

							<li>							
								<a href = "http://inglesinfantil.es/" TARGET="_blank">
								<div class = "ingles">
								Inglés
								</div>
								</a>
							</li>								
							
						</ul>
						
						<table width = "100%">
							<tr>
								<td>
									<div id="pitch">						
									</div>
								</td>
								
								<td class = "contacto">
									<div align = "left">
										<a target="_blank">
											<xsl:attribute name = "HREF">
												<xsl:value-of select = "galeria/link"/>
											</xsl:attribute>
											<font color = "blue">Ver Mapa</font>
										</a>
										<br/>
										<xsl:value-of select ="galeria/calle"/>
										<br/>
										<xsl:value-of select ="galeria/localidad"/>
										<br/>
										<xsl:value-of select ="galeria/cp"/>
										<br/>
										<xsl:value-of select ="galeria/provincia"/>
										<br/>
										Teléfonos de Contacto:
										<br/>
										<xsl:for-each select ="galeria/telefono">
											<xsl:value-of select ="."/>
											<br/>
										</xsl:for-each>	
										Puede escribirnos:		
										<a> 
											<xsl:attribute name="href">
												mailto: <xsl:value-of select="galeria/pie/mail/correo"/>? 									
												subject: <xsl:value-of select ="galeria/pie/mail/asunto"/>
											</xsl:attribute> 
											
											<b><xsl:value-of select="galeria/pie/mail/correo"/></b>
										</a>		
									</div>
								</td>
								
								<td valign="top">
									<img src= "../../../IMAGENES/Fondos/logo_color.jpg"></img>
								</td>
								
								<td align = "right" text-align= "center">
									<div align = "right">
										<ul>							
											<li>
												
												<a href="../ESCUELA/escuela.xml">
													<div class = "vertical">
														Escuela
													</div>
												</a>
											</li>
											<br/><br/>
											<li>
												
												<a href="../SERVICIOS/servicios.xml">
													<div class = "vertical">
														Servicios
													</div>
												</a>
											</li>
											<br/><br/>
											
											<li>
												<a href="../OBJETIVOS/objetivos.xml">
													<div class = "vertical">												
														Objetivos
													</div>
												</a>
											</li>
											<br/><br/>
											
											<li>
												<a href="../HORARIOS/horarios.xml">
													<div class = "vertical">
														Horarios
													</div>
												</a>
											</li>
											<br/><br/>
											
											<li>
												<a href="../INSTALACIONES/instalaciones.xml">
													<div class = "vertical">
														Instalaciones
													</div>
												</a>
											</li>
											<br/><br/>
											
											<li>
												<a href="../TARIFAS/tarifas.xml">
													<div class = "vertical">
														Tarifas
													</div>
												</a>
											</li>
											<br/><br/>
											
											<li>
												<a href="../PROYECTO/proyecto.xml">
													<div class = "vertical">
														Proyecto
													</div>
												</a>
											</li>
											<br/><br/>
										</ul>
									</div>
								</td>
							</tr>
						</table>										
					<div class="clr"></div>
				</div>
				
				<div id="main">	
					<h2 class = "tit"> <xsl:value-of select ="galeria/titulo"/> </h2>
						<ol TYPE = 'A' start = '1'>
						<!-- Bucle general por categoria -->
						<xsl:for-each select ="galeria/categoria">
							<xsl:variable name = "ident" select = "./id"/>
							
							<!-- Este  div agrupa las categorias-->
							<div id="Id_Categoria" style="display:block;">
								<li>
									<input class = "duendes">
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
									<!--ol TYPE = 'I' start = '1'-->
									<xsl:for-each select ="./lista">														
										<xsl:variable name = "lista" select = "./id1"/>
										
										<br/>
										<xsl:for-each select ="./foto">
											<xsl:variable name = "foto" select = "position()"/>												
											<xsl:variable name = "ruta" select = "./ruta"/>
											<xsl:variable name = "flota" select = "./flota"/>											
											<xsl:variable name = "param" select = "position()"/>
											
					
											<xsl:if test="$param mod 2 != 0">
												<xsl:choose> 
													<xsl:when test="$flota = 'no'">
														<div class = "margen3 noflota borde1">							
															<!--xsl:value-of select="$foto"/-->
															<xsl:choose>
																<xsl:when test="contains($ruta, '.JPG')">
																	<a TARGET = "_blank">
																		<xsl:attribute name = "href">
																			<xsl:value-of select ="./ruta"/>
																		</xsl:attribute>
																		
																		<img width = "220" height="180" valign = "top" align="middle" hspace="15" vspace="15" >
																			<xsl:attribute name = "src">
																				<xsl:value-of select ="./ruta"/>
																			</xsl:attribute>																	
																		</img>
																	</a>
																</xsl:when>

																<xsl:when test ="contains($ruta, 'WMV')">
																	<embed autostart="false" loop="true">
																		<xsl:attribute name = "src">
																			<xsl:value-of select ="."/>
																		</xsl:attribute>
																	</embed>																
																</xsl:when>
															</xsl:choose> 
														</div>
													</xsl:when>
													
													<xsl:when test="$flota = 'si'">
														<div class = "margen flota borde1">							
															<!--xsl:value-of select="$foto"/-->
															<xsl:choose>
																<xsl:when test="contains($ruta, '.JPG')">
																	<a TARGET = "_blank">
																		<xsl:attribute name = "href">
																			<xsl:value-of select ="./ruta"/>
																		</xsl:attribute>
																		
																		<img width = "220" height="180" valign = "top" align="middle" hspace="15" vspace="15" >
																			<xsl:attribute name = "src">
																				<xsl:value-of select ="./ruta"/>
																			</xsl:attribute>																	
																		</img>
																	</a>
																</xsl:when>

																<xsl:when test ="contains($ruta, 'WMV')">
																	<embed autostart="false" loop="true">
																		<xsl:attribute name = "src">
																			<xsl:value-of select ="."/>
																		</xsl:attribute>
																	</embed>																
																</xsl:when>
															</xsl:choose> 
														</div>
													</xsl:when>
												</xsl:choose> 
											</xsl:if> 
					
											<xsl:if test="$param mod 2 = 0">
												<div class = "margen3 noflota borde1">
													<!--xsl:value-of select="$foto"/-->
													<xsl:choose> 
														<xsl:when test="contains($ruta, '.JPG')"> 		
															<a TARGET = "_blank">
																<xsl:attribute name = "href">
																	<xsl:value-of select ="./ruta"/>
																</xsl:attribute>
																
																<img width = "220" height="180" valign = "top" align="middle" hspace="15" vspace="15" >
																	<xsl:attribute name = "src">
																		<xsl:value-of select ="./ruta"/>
																	</xsl:attribute>																				
																</img>
															</a>
														</xsl:when>

														<xsl:when test ="contains($ruta, 'WMV')">
															<embed autostart="false" loop="true">
																<xsl:attribute name = "src">
																	<xsl:value-of select ="."/>
																</xsl:attribute>
															</embed>
														</xsl:when>
													</xsl:choose> 
												</div>
											</xsl:if>
										</xsl:for-each>
										<br/>
									</xsl:for-each>
								<!-- Fin div Categorias -->
								</div>
								
							<!-- Fin div Temas -->
							</div>
							
						<!-- Fin blucle general -->
						</xsl:for-each>
					<!-- Fin Lista de Categorias -->
					</ol>
				</div>
				
				<div class="clr"></div>
				<div id="footer">
					<table width = "100%">
						<tr width = "100%">
							<td width = "32%">
								<div class = "flota">
									Siguenos en: 
								</div>
								
								<div>
									<a target="_blank">
										<xsl:attribute name = "HREF">
											<xsl:value-of select="pagina/pie/link/ruta"/>
										</xsl:attribute>
										
										<img src = "../../../IMAGENES/images/untitled.png" alt = "escuela inafntil duendes san vicente facebook" width = "6%" heigth = "6%"/>
									</a>
								</div>
							</td>
							
							
							<td width = "33%">
								
							</td>
							
							<td width = "32%" align = "right">
								<a href="../../LEGAL/legal.xml">Aviso Legal</a>
							</td>
						</tr>
					</table>	
				</div>
			</div>
		</body>
	</html>
  </xsl:template>
</xsl:stylesheet>
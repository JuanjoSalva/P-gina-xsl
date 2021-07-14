<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
		<head>
			<title> ESCUELA INFANTIL DUENDES SAN VICENTE DEL RASPEIG INGLÉS INFANTIL AVISO LEGAL </title>
			
			<meta http-equiv="X-UA-Compatible" content="IE=9" /> 
			<link rel="stylesheet" type="text/css" href="../../CSS/screen.css"/>
			<link rel="stylesheet" type="text/css" href="../../CSS/hoja1.css"/>
			<Script type="text/javascript" src="../../JSCRIPT/Resolucion.js"/>
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
											<xsl:value-of select ="pagina/cabecera/texto1"/>
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
								<a href="../ESCUELA/ESCUELA/escuela.xml">
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
								<a href="../ADMISION/Usuario.xml">
								<div class = "matricula">
								Matricula
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
										<xsl:value-of select ="pagina/cuerpo/calle"/>
										<br/>
										<xsl:value-of select ="pagina/cuerpo/localidad"/>
										<br/>
										<xsl:value-of select ="pagina/cuerpo/cp"/>
										<br/>
										<xsl:value-of select ="pagina/cuerpo/provincia"/>
										<br/><br/>
										Teléfonos de Contacto:
										<br/>
										<xsl:for-each select ="pagina/cuerpo/telefono">
											<xsl:value-of select ="."/>
											<br/>
										</xsl:for-each>	
										<br/>
										Puede escribirnos:		
										<a> 
											<xsl:attribute name="href">
												mailto: <xsl:value-of select="pagina/pie/mail/correo"/>? 									
												subject: <xsl:value-of select ="pagina/pie/mail/asunto"/>
											</xsl:attribute> 
											
											<b><xsl:value-of select="pagina/pie/mail/correo"/></b>
										</a>		
									</div>
								</td>
								
								<td valign="top">
									<img src= "../../IMAGENES/Fondos/logo_color.jpg"></img>
								</td>
							</tr>
						</table>										
					<div class="clr"></div>
				</div>
				
				<div id="main">	
					<h2 class = "tit"> <xsl:value-of select ="pagina/cabecera/titulo"/> </h2>
					<xsl:for-each select ="pagina/cuerpo/fila">			
						<xsl:for-each select ="./texto">	
								<br/>
								<div>
									<xsl:for-each select ="./txt">
										<xsl:value-of select ="."/>
										<br/>
									</xsl:for-each>
								</div>
						</xsl:for-each>							
					</xsl:for-each>						
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
										
										<img src = "../../IMAGENES/images/untitled.png" alt = "escuela inafntil duendes san vicente facebook" width = "6%" heigth = "6%"/>
									</a>
								</div>
							</td>
							
							
							<td width = "33%">
								
							</td>
							
							<td width = "32%" align = "right">
								<a href="../LEGAL/legal.xml">Aviso Legal</a>
							</td>
						</tr>
					</table>	
				</div>
			</div>
		</body>
	</html>
  </xsl:template>
</xsl:stylesheet>
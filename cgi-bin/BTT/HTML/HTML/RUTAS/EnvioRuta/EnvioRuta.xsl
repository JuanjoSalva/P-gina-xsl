<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Envio_Ruta</title>
				
			<link rel="stylesheet" type="text/css" href="../../../../CSS/Hoja1.css"/>
			<Script type="text/javascript" src="../../../../JSCRIPT/Resolucion.js"/>	
		</head>
	  
		<body class = "amarillo" onload = "modificar()">
	  
			
				<div id = "padre" WIDTH="100%" HEIGHT= "100%">
				  
					<div class = "Panel_Izquierdo flota">
					 
					</div>
					
					<!-- Panel Central -->
					<div class = "Panel_Central flota">		
					<FORM method="post" action = "mailto:raulperez@mail.es">
							<a name = "Inicio">
								<h1 align="center">					    
									<xsl:value-of select ="pagina/cabecera/titulo"/>
								</h1>					
							</a>				
							
							
							<br/><br/>
					
							
							
							<TABLE BORDER = "1" background ="#FFFF9E">
								<TR>
									<TR>
										<TD WIDTH = "40%">
											<xsl:value-of select ="pagina/cuerpo/nombre"/>
										</TD>

										<TD WIDTH = "60%">							
											<INPUT TYPE = "TEXT" NAME = "Nombre" SIZE ="33" maxlength  = "30"/>
										</TD>
									</TR>

									<TR>
										<TD WIDTH = "40%">
											<xsl:value-of select ="pagina/cuerpo/grado"/>
										</TD>

										<TD WIDTH = "60%">
											<SELECT>
												<OPTION> Dificultad Fácil </OPTION>
												<OPTION> Dificultad Moderada </OPTION>
												<OPTION> Dificultad Alta </OPTION>
												<OPTION> Dificultad Muy Alta </OPTION>
											</SELECT>
											Escoja una opción
										</TD>						
									</TR>
									

									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/distancia"/>
										</TD>

										<TD WIDTH = "50%">
											<INPUT TYPE = "TEXT" NAME = "Distancia" SIZE ="7" maxlength  = "5"/> kilometros
										</TD>						
									</TR>

									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/alt_min"/>
										</TD>

										<TD WIDTH = "50%">
											<INPUT TYPE = "Min" NAME = "CP" SIZE ="8" maxlength  = "6"/> metros
										</TD>						
									</TR>

									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/alt_max"/>
										</TD>

										<TD WIDTH = "50%">
											<INPUT TYPE = "Max" NAME = "Provincia" SIZE ="8" maxlength  = "6"/> metros
										</TD>						
									</TR>

									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/des_sub"/>
										</TD>

										<TD WIDTH = "50%">
											<INPUT TYPE = "TEXT" NAME = "Subiendo" SIZE ="8" maxlength  = "6"/> metros
										</TD>						
									</TR>

									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/des_baj"/>

										</TD>

										<TD WIDTH = "50%">
											<INPUT TYPE = "TEXT" NAME = "Bajando" SIZE ="8" maxlength  = "6"/> metros
										</TD>					
									</TR>

									<TR>
										<TD WIDTH = "40%">
											<xsl:value-of select ="pagina/cuerpo/mapa"/>
										</TD>

										<TD WIDTH = "60%">
											<INPUT TYPE = "FILE" NAME = "Mapa"/>
										</TD>					
									</TR>

									<TR>
										<TD WIDTH = "40%">
											<xsl:value-of select ="pagina/cuerpo/imagen"/>
										</TD>

										<TD WIDTH = "60%">
											<INPUT TYPE = "FILE" NAME = "Desnivel"/>
										</TD>					
									</TR>


									<TR>
										<TD WIDTH = "60%">
											<BUTTON NAME = "ENVIAR" TYPE = "SUBMIT">
												<B>  <FONT SIZE = "2"> Enviar Datos </FONT> </B>
											</BUTTON>
								
											<BUTTON NAME = "BORRAR" TYPE = "RESET">
												<B>  <FONT SIZE = "2"> Borradar los Datos </FONT> </B>							
											</BUTTON>
										</TD>						
									</TR>
								</TR>
							</TABLE>
					</FORM>
					
					<div class = "nomargen flota">
						<a>
							<xsl:attribute name="HREF">
								#Inicio
							</xsl:attribute>
							<xsl:value-of select ="pagina/pie/link1"/>
						</a>
					</div>
				
					<div class = "margen3 flota">
						<a>
							<xsl:attribute name="HREF">
								../Rutas.xml
							</xsl:attribute>
							<xsl:value-of select ="pagina/pie/link2"/>
						</a>
					</div>

					
					<div class = "margen4">
						<a>
							<xsl:attribute name="HREF">
								../../INICIO/Inicio.xml
							</xsl:attribute>
							<xsl:value-of select ="pagina/pie/link3"/>
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
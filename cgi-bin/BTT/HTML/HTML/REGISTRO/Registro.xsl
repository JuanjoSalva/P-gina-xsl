<?xml version="1.0" encoding="ISO-8859-1"?>
<?xml-stylesheet href="mystyle.css" type="text/css"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>Registrar</title>
			<link rel="stylesheet" type="text/css" href="../../../CSS/Hoja1.css"/>
			<Script type="text/javascript" src="../../../JSCRIPT/Resolucion.js"/>	
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
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/nombre"/>
										</TD>

										<TD WIDTH = "50%">							
											<INPUT TYPE = "TEXT" NAME = "Nombre" SIZE ="34" maxlength  = "30"/>
										</TD>
									</TR>

									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/apellido1"/>
										</TD>

										<TD WIDTH = "50%">							
											<INPUT TYPE = "TEXT" NAME = "Apellido1" SIZE ="34" maxlength  = "30"/>
										</TD>
									</TR>
									
									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/apellido2"/>
										</TD>

										<TD WIDTH = "50%">							
											<INPUT TYPE = "TEXT" NAME = "Apellido2" SIZE ="34" maxlength  = "30"/>
										</TD>
									</TR>
									
									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/email"/>
										</TD>

										<TD WIDTH = "50%">							
											<INPUT TYPE = "TEXT" NAME = "Email" SIZE ="44" maxlength  = "40"/>
										</TD>
									</TR>
									
									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/telefono"/>
										</TD>

										<TD WIDTH = "50%">							
											<INPUT TYPE = "TEXT" NAME = "Telefono" SIZE ="15" maxlength  = "12"/>
										</TD>
									</TR>

									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/sexo"/>
										</TD>

										<TD WIDTH = "60%">
											<B> Sexo: </B>
											Hombre
											<INPUT TYPE = "RADIO" NAME = "Sexo" Value ="Hombre"/>
											Mujer
											<INPUT TYPE = "RADIO" NAME = "Sexo" Value ="Mujer"/>
										</TD>
										
									</TR>
									
									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/usuario"/>
										</TD>

										<TD WIDTH = "50%">							
											<INPUT TYPE = "TEXT" NAME = "Usuario" SIZE ="14" maxlength  = "12"/>
										</TD>
									</TR>
									
									<TR>
										<TD WIDTH = "50%">
											<xsl:value-of select ="pagina/cuerpo/contra"/>
										</TD>

										<TD WIDTH = "50%">							
											<INPUT TYPE = "PASSWORD" NAME = "Contra" SIZE ="14" maxlength  = "12"/>
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
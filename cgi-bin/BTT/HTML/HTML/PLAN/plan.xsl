<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
		<head>
			<title>PLAN RUTA</title>
			<link rel="stylesheet" type="text/css" href="../../../CSS/Hoja1.css"/>
			<Script type="text/javascript" src="../../../JSCRIPT/Resolucion.js"/>
		</head>
		<body class = "amarillo" onload = "modificar()">
	  
			<div id = "padre" WIDTH="100%" HEIGHT= "100%">
			
				<div class = "Panel_Izquierdo flota">
				 
				</div>
			  
				<div class = "Panel_Central flota">
					<a name = "Inicio">
						<h1>
							<CENTER>
								<font color="red">
								  <u>PLAN</u>
								</font>
							</CENTER>
						</h1>
					</a>						
						
					<xsl:for-each select="//ruta">
						<p align = "center">
							<table border ="1">
								<tr>
									<th>
										FECHA QUE SE PLANTEÓ:
									</th>
									<td>
										<xsl:value-of select="./fecha_inscrip"/>
									</td>
								</tr>							  
								
								<tr>
									<th>
										FECHA PREVISTA:
									</th>
									<td>
										<xsl:value-of select="./fecha_prev"/>
									</td>
								</tr>
							</table> 
						</p>
						  <br/>
						  <br/>

					  <b>Nombre: </b><xsl:value-of select="./nombre"/> <br/>
					  
					  
					  <img width="400" height="350">
						<xsl:attribute name = "src">
						  <xsl:value-of select="./mapa"/>
						</xsl:attribute>
					  </img>
					  <br/>
					  <xsl:value-of select="./pais"/>,
					  <xsl:value-of select="./ciudad"/>,
					  <xsl:value-of select="./localidad"/><br/>

					  <img width="200" height="150">
						<xsl:attribute name = "src">
						  <xsl:value-of select ="./imagen"/>
						</xsl:attribute>
					  </img>
					  <br/>
					  <b>Grado de dificultad: </b><xsl:value-of select="./dificultad"/><br/>
					  <b>Distancia Recorrida: </b><xsl:value-of select="./distancia"/><br/>
					  <b>Altitud min: </b><xsl:value-of select="./altitud_min"/>, <xsl:text> </xsl:text>
					  <b>max: </b><xsl:value-of select="./altitud_max"/><br/>
					  <b> Desnivel acum. subindo: </b><xsl:value-of select="./desnivel_acum_subiendo"/>, <xsl:text> </xsl:text>
					  <b> bajando: </b><xsl:value-of select="./desnivel_acum_bajando"/>

					  <br/><br/>
						<div class = "margen3 flota">
							<a>
								<xsl:attribute name="HREF">
									#Inicio
								</xsl:attribute>
								Volver Al principio
							</a>
					    </div>
	
					
						<div class = "margen4">
							<a>
								<xsl:attribute name="HREF">
									../INICIO/Inicio.xml
								</xsl:attribute>
								Inicio
							</a>
							
						</div>
						<br/><br/><br/>
					</xsl:for-each>
					
				</div>

				<div class = "Panel_Derecho">
			
				</div>
			</div>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
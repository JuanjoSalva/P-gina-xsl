<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>EJEMPLO 1</title>
      </head>
      <body>
        <h1>
          <CENTER>
          <font color="red">
            <u>El Panal</u>
          </font>
          </CENTER>
        </h1>
          <xsl:for-each select="//autores/autor">
            <p>
            <i>
              <font size ="4">AUTOR:</font></i> <b><xsl:value-of select="./nombre"/> <xsl:text> </xsl:text> 
            <xsl:text> </xsl:text>
            <xsl:for-each select="apellido">
                <xsl:value-of select="."/>
                <xsl:text> </xsl:text>
            </xsl:for-each></b>(
            <xsl:value-of select="./telefono"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="./email"/>)
           
            </p>
          </xsl:for-each>
        <br/>
        <br/>
        <b><font size="5">RESUMEN </font></b>
        <xsl:for-each select="//articulo/resumen/parrafo">
          <p>
            <font size="3">
              Párrafo.- <xsl:text> </xsl:text> <xsl:value-of select="."/>
            </font>
          </p>
        </xsl:for-each>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
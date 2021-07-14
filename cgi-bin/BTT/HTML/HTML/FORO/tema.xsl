<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>
          FORO
        </title>
        <LINK REL= "StyleSheet" HREF = "../../../CSS/Hoja1.css" TYPE = "Text/css"/>
        <Script type="text/javascript" src="../../../JSCRIPT/Resolucion.js"></Script>
      </head>
      <body class = "amarillo" onload = "modificar()">
        <h1>
          <CENTER>
            <font color="red">
              <u>FORO BTT</u>
            </font>
          </CENTER>
        </h1>

        

        <CENTER>
          <font color="blue">
            <u><b>TEMAS</b></u>
          </font>
        </CENTER>
        
          <table border ="1" align ="center">
            <tr>
              <th>Tema</th>
              <th>Fecha</th>
              <th>Usuario</th>
            </tr>
            <xsl:for-each select="//tema">
              <tr>
                <td>
                  <!--a class="normal"-->
                  <a>
                    <xsl:attribute name="HREF">
                      #mensajes
                    </xsl:attribute>
                    <xsl:value-of select="./descripcion"/>
                  </a>
                </td>

                <td>
                  <!--a class="normal"-->
                  <a>
                    <xsl:attribute name="HREF">
                      #mensajes
                    </xsl:attribute>
                    <xsl:value-of select="./fecha"/>
                  </a>
                </td>
                
                <td>
                  <!--a class="normal"-->
                  <a>
                    <xsl:attribute name="HREF">
                      #mensajes
                    </xsl:attribute>
                    <xsl:value-of select="./usuario"/>
                  </a>
                </td>
              </tr>
            </xsl:for-each>
          </table>
          <br/>
          <br/>

          pkpokp<br/>
          ersewswe4serw<br/>
          kjjljl<br/>
          jiljoijojio<br/>
          rtrtrtrtr<br/>
          pkpokp<br/>
          ersewswe4serw<br/>
          kjjljl<br/>
          jiljoijojio<br/>
          rtrtrtrtr<br/>
          pkpokp<br/>
          ersewswe4serw<br/>
          kjjljl<br/>
          jiljoijojio<br/>
          rtrtrtrtr<br/>
          pkpokp<br/>
          ersewswe4serw<br/>
          kjjljl<br/>
          jiljoijojio<br/>
          rtrtrtrtr<br/>
          pkpokp<br/>
          ersewswe4serw<br/>
          kjjljl<br/>
          jiljoijojio<br/>
          rtrtrtrtr<br/>
          pkpokp<br/>
          ersewswe4serw<br/>
          kjjljl<br/>
          jiljoijojio<br/>
          rtrtrtrtr<br/>
          pkpokp<br/>
          ersewswe4serw<br/>
          kjjljl<br/>
          jiljoijojio<br/>
          rtrtrtrtr<br/>
          pkpokp<br/>
          ersewswe4serw<br/>
          kjjljl<br/>
          jiljoijojio<br/>
          rtrtrtrtr<br/>
          pkpokp<br/>
          ersewswe4serw<br/>

          <xsl:variable name="tema" select="./descripcion"/>
          <xsl:variable name="fecha" select="./fecha"/>
          <xsl:variable name="usuario" select="./usuario"/>

        <a>
          <xsl:attribute name="NAME">
            mensajes
          </xsl:attribute>
          <CENTER>
            <font color="blue">
              <u>
                <b>MENSAJES</b>
              </u>
            </font>
          </CENTER>
        </a>
          
          <table border ="1" align ="center">
            <!--xsl:for-each select ="tiempo/estacion[precipitaciones != '0.0']"-->
            <xsl:for-each select ="//tema[descripcion = descripcion]">
              <tr>
                <td>
                  <xsl:value-of select="./mensaje"/>
                </td>
              </tr>
              </xsl:for-each>
          </table>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
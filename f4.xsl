<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" />
  <xsl:template match="/book">
    <html>
      <head>
        <title>
          <xsl:value-of select="./novel[@type='판타지4']/title" />
        </title>
      </head>
      <body background="b.PNG">
        <br />
        <header>
          <h1 align="center" style="font-family: 맑은 고딕; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; letter-spacing: 5px;">
            <font color="#114274">
              <xsl:value-of select="./novel[@type='판타지4']/title" />
            </font>
          </h1>
        </header>
        <br></br>
        <section>
          <table border="15" align="center" width="95%" cellpadding="40%" background="paper4.JPG" bordercolor="#002143" style="background-size: 100% 100%;">
            <tr>
              <td align="center" rowspan="5" width="50%" style="border:0px;">
                <image height="500" width="350" style="border-radius: 3%; overflow: hidden;">
                  <xsl:attribute name="src">
                    <xsl:value-of select="./novel[@type='판타지4']/image/@file" />
                  </xsl:attribute>
                </image>
              </td>
              <td width="50%" style="line-height:1.6; font-family:&quot;맑은 고딕&quot;; border:0px; white-space: pre-line; font-size: small;">
                <xsl:value-of select="./novel[@type='판타지4']/story" />
              </td>
            </tr>
          </table>
        </section>
        <br />
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
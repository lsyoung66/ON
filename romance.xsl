<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" />
  <xsl:template match="/book">
    <html>
      <head>
        <title>romance</title>
      </head>
      <body background="romance.PNG">
        <br />
        <header>
          <table bgcolor="#FCB2BC" width="100%" style="border:1px solid #CE3D51;">
            <tr>
              <td align="center" width="20%" onclick="location.href='main.xml'" style="border:5px double #CE3D51;">
                <image src="logo.PNG" height="80" width="120" title="Go Mainpage~!" />
              </td>
              <td align="center" width="60%" style="border:5px dashed #CE3D51;">
                <h1>
                  <font color="#853843" style="font-family:Georgia; font-size:35pt;">Romance Novel</font>
                </h1>
              </td>
              <td align="center" width="20%" style="border:5px double #CE3D51;">
                <image src="찜.PNG" height="90" weight="90" onmouseover="this.src=&quot;찜_a.PNG&quot;" onmouseout="this.src=&quot;찜.PNG&quot;" />
              </td>
            </tr>
          </table>
        </header>
        <br />
        <hr />
        <br />
        <br />
        <br />
        <section>
          <article>
            <xsl:for-each select="novel[@type='로맨스']">
              <table border="1" align="center" width="60%" bgcolor="#E4AAAA" cellpadding="10px" style="padding:3px; border:2.5px dashed #FC65A1; font-weight:bold; font-family:Lucida Sans Unicode; font-size:13pt">
                <tr>
                  <td align="center" rowspan="5" width="30%" style="border: 6px ridge #B24555;">
                    <image height="300" width="210">
                      <xsl:attribute name="src">
                        <xsl:value-of select="image/@file" />
                      </xsl:attribute>
                    </image>
                  </td>
                  <td width="50%" style="border: 1px solid #6E2947; border-bottom: 7px solid #A03A4A; text-align: center; font-weight:900; text-shadow: 2.5px 2.5px 2px #C94E5E;">
                    <font color="#FFD4D4" size="6pt" style="font-family:sans-serif;">
                      <xsl:value-of select="title" />
                    </font>
                  </td>
                  <td align="center" rowspan="5" width="20%" style="border: 1px solid #6E2947;">
                    <image id="change" src="찜0.PNG" height="120" width="120" onclick="changeImage()">
                      <script>function changeImage() {
    var state = document.getElementById('change');

    if (state.src.match("찜0.PNG")) {
        state.src = "찜.PNG";
    }
    else {
        state.src = "찜0.PNG";
    }
}
</script>
                    </image>
                  </td>
                </tr>
                <tr>
                  <td style="border: 1px solid #6E2947;">
                    <font color="#551F1F">
                      <xsl:value-of select="author" />
                    </font>
                  </td>
                </tr>
                <tr>
                  <td style="border: 1px solid #6E2947;">
                    <font color="#551F1F">
                      <xsl:value-of select="publisher" />
                    </font>
                  </td>
                </tr>
                <tr>
                  <td style="border: 1px solid #6E2947;">
                    <a onclick="window.open(this.href, '줄거리', 'width='+ 1000 +', height='+ 600 +', left=' + Math.ceil(( window.screen.width - 1000 )/2) + ', top='+ Math.ceil(( window.screen.height - 600 )/2) +'resizable=1,scrollbars=1'); return false;" onMouseOver="this.innerHTML='클릭 시 줄거리를 볼 수 있습니다.'; this.style.color='white'; this.style.fontWeight='100'; this.style.fontFamily='Georgia'; this.style.fontSize='13pt'; this.style.fontStyle='italic';" onMouseOut="this.innerHTML='줄거리'; this.style.color='#551F1F'; this.style.fontWeight='bold'; this.style.fontFamily='Georgia'; this.style.fontSize='13pt'; this.style.fontStyle='normal';" style="text-decoration:none;">
                      <xsl:attribute name="href">
                        <xsl:value-of select="story/@href" />
                      </xsl:attribute>
                      <font color="#551F1F">줄거리</font>
                    </a>
                  </td>
                </tr>
                <tr>
                  <td style="border: 1px solid #6E2947;">
                    <button style="background-color:#FFD4D4; border:1px outset; border-radius:20px; padding:8px;" id="buy" onmouseover="mouseOver()" onmouseout="mouseOut()">
                      <xsl:attribute name="onclick">
                        window.location.href="<xsl:value-of select="site/@href"></xsl:value-of>"
                      </xsl:attribute>
                      <font color="#7A2E4F" size="3pt">구매하기</font>
                      <script>function mouseOver() {
  document.getElementById("buy").style.color = "white";
  document.getElementById("buy").style.fontWeight = "bold";
  document.getElementById("buy").style.fontFamily = "Lucida Sans Unicode";
  document.getElementById("buy").style.fontSize = "12pt";
  document.getElementById("buy").style.border = "1px outset";
  document.getElementById("buy").style.borderRadius = "20px";
}

function mouseOut() {
  document.getElementById("buy").style.color = "black";
}</script>
                    </button>
                  </td>
                </tr>
              </table>
              <br />
              <br />
            </xsl:for-each>
          </article>
        </section>
        <br />
        <hr />
        <footer style="background-color: rgba( 200, 150, 150, 0.35 );">
          <table style="font-family:Palatino Linotype; font-size:9pt;" align="center" width="36%">
            <tr>
              <td rowspan="8" align="center" width="38%">
                <image width="150" src="mainlogo.PNG"></image>
              </td>
              <td style="padding:5px;">(주)엘엠케이라이브러리</td>
            </tr>
            <tr>
              <td style="padding:5px;">대표 : 김이주, 문지원, 이서영</td>
            </tr>
            <tr>
              <td style="padding:5px;">고객정보보호 책임자 : 김이주, 문지원, 이서영</td>
            </tr>
            <tr>
              <td style="padding:5px;">FAS : 01-2345-6789</td>
            </tr>
            <tr>
              <td style="padding:5px;">E-mail : privacy@on.co.kr</td>
            </tr>
            <tr>
              <td style="padding:5px;">사업자등록번호 : 123-45-67890</td>
            </tr>
            <tr>
              <td style="padding:5px;">통신판매업신고 : 제 1234-56789호</td>
            </tr>
            <tr>
              <td style="padding:5px;">호스팅 서비스사업자 : 엘엠케이라이브러리(주)</td>
            </tr>
            <tr>
              <td colspan="2" align="center" style="font-size:11pt; letter-spacing:3.5px;">Copyright ⓒ LMKlibrary Corp. All Rights Reserved.</td>
            </tr>
          </table>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
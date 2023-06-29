<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" />
  <xsl:template match="/rec_book/main">
    <html>
      <head>
        <title>main</title>
      </head>
      <body bgcolor="#938578">
        <header>
          <table align="center" width="100%">
            <tr>
              <td colspan="4" />
              <td align="center" width="5%" style="background-color:rgba(0,0,0,0.3); border:0px; border-radius:5%;">
                <image src="회원가입.PNG" height="40" weight="40" title="회원가입" />
              </td>
              <td align="center" width="5%" style="background-color:rgba(0,0,0,0.3); border:0px; border-radius:5%;">
                <image src="로그인.PNG" height="40" weight="40" title="로그인" />
              </td>
              <td align="center" width="5%" style="background-color:rgba(0,0,0,0.3); border:0px; border-radius:5%;">
                <image src="찜_a.PNG" height="50" weight="50" title="찜" />
              </td>
            </tr>
            <tr>
              <td height="30px" colspan="7" />
            </tr>
            <tr align="center" border="1">
              <td width="33%" />
              <td align="center" width="12%" style="background-color:rgba(0,0,0,0.12); border:0px; border-radius:2%;">
                <a href="main.xml">
                  <image src="mainlogo.png" height="150" weight="150" />
                </a>
              </td>
              <td align="left" width="18%" style="background-color:rgba(0,0,0,0.12); border:0px; border-radius:2%;">
                <a href="main.xml">
                  <image src="full_name.png" height="150" weight="200" />
                </a>
                <td width="33%" colspan="4" />
              </td>
            </tr>
          </table>
          <hr />
        </header>
        <section>
          <table align="center" width="50%">
            <td width="5%">
              <image src="돋보기.png" height="50" width="50" />
            </td>
            <td>
              <input id="text" type="text" class="input_text" name="search" placeholder=" 검색할 도서를 입력하세요:)" style="width:100%; border:3px dashed #2e82b5; color:#2e82b5;" onkeydown="enterSearch()">
                <script>function enterSearch() {
    if(event.keyCode == 13){
        myFunction();
    }
}
function myFunction() {
    var x = document.getElementById("text").value;
    window.location.href = "https://www.google.com/search?tbm=bks&amp;q="+x;
}</script>
              </input>
            </td>
          </table>
          <hr />
          <br />
          <table align="center" width="1200px">
            <tr>
              <td>
                <button id="button1" onclick="BESTImg()" style="background-color:black; border : 2px solid #ffe500; border-radius: 30px 15px;" onmouseover="mouseOver()" onmouseout="mouseOut()">
                  <font size="2pt" color="#ffe500" style="font-weight: bolder;">베스트셀러</font>
                  <script>function mouseOver() {
  document.getElementById("button1").style.border = "3px dotted #ffe500";
}

function mouseOut() {
  document.getElementById("button1").style.border = "2px solid #ffe500";
}</script>
                </button>
                <button id="button2" onclick="SNSImg()" style="background-color:black; border : 2px solid #ffe500; border-radius: 30px 15px;" onmouseover="Over()" onmouseout="Out()">
                  <font size="2pt" color="#ffe500" style="font-weight: bolder;">SNS추천도서</font>
                  <script>function Over() {
  document.getElementById("button2").style.border = "3px dotted #ffe500";
}

function Out() {
  document.getElementById("button2").style.border = "2px solid #ffe500";
}</script>
                </button>
                <button id="button3" onclick="MOVIEImg()" style="background-color:black; border : 2px solid #ffe500; border-radius: 30px 15px;" onmouseover="mouseover()" onmouseout="mouseout()">
                  <font size="2pt" color="#ffe500" style="font-weight: bolder;">영화원작</font>
                  <script>function mouseover() {
  document.getElementById("button3").style.border = "3px dotted #ffe500";
}

function mouseout() {
  document.getElementById("button3").style.border = "2px solid #ffe500";
}</script>
                </button>
              </td>
            </tr>
            <tr>
              <td style="border:5px double #ffe500;">
                <image id="img" src="best.jpg" height="200" width="1200" />
                <script>
    function BESTImg() {
      document.getElementById("img").src = "best.jpg";
    }
    function SNSImg() {
      document.getElementById("img").src = "sns.jpg";
    }
    function MOVIEImg() {
      document.getElementById("img").src = "movie.jpg";
    }
  </script>
              </td>
            </tr>
          </table>
          <br></br>
          <hr />
          <p align="center">
            <table width="900px" cellpadding="2px" cellspacing="25px">
              <tr>
                <td colspan="3" align="center">
                  <font style="font-size:35pt; letter-spacing:5px; font-weight:bold; font-family:sans-serif;" color="#FFF0D3">어떤 장르를 선택할까요?</font>
                </td>
              </tr>
              <tr>
                <td height="15px" colspan="3" />
              </tr>
              <tr>
                <td style="border: 2.5px dashed #CDB9A7; border-radius:50%;" align="center">
                  <a href="detective.xml">
                    <img align="center" style="border-radius:50%;" src="추리.JPG" onmouseover="this.src=&quot;추리흐림.JPG&quot;" onmouseout="this.src=&quot;추리.JPG&quot;" width="300" height="300" />
                  </a>
                </td>
                <td style="border: 2.5px dashed #CDB9A7; border-radius:50%;" align="center">
                  <a href="fantasy.xml">
                    <img align="center" style="border-radius:50%;" src="판타지.JPG" onmouseover="this.src=&quot;판타지흐림.JPG&quot;" onmouseout="this.src=&quot;판타지.JPG&quot;" width="300" height="300" />
                  </a>
                </td>
                <td style="border: 2.5px dashed #CDB9A7; border-radius:50%;" align="center">
                  <a href="romance.xml">
                    <img align="center" style="border-radius:50%;" src="로맨스.JPG" onmouseover="this.src=&quot;로맨스흐림.JPG&quot;" onmouseout="this.src=&quot;로맨스.JPG&quot;" width="300" height="300" />
                  </a>
                </td>
              </tr>
              <tr>
                <td align="center" style="background-color:rgba(255,255,255,0.2); border-radius:40px 80px / 80px 40px; border:0px dotted white;">
                  <font color="#38280A" style="font-family:Georgia; font-size:20pt; letter-spacing:5px; ">Detective</font>
                </td>
                <td align="center" style="background-color:rgba(0,0,0,0.12); border-radius:40px 80px / 80px 40px; border:0px dotted white;">
                  <font color="#FBF4E7" style="font-family:Georgia; font-size:20pt; letter-spacing:5px; ">Fantasy</font>
                </td>
                <td align="center" style="background-color:rgba(255,255,255,0.2); border-radius:40px 80px / 80px 40px; border:0px dotted white;">
                  <font color="#38280A" style="font-family:Georgia; font-size:20pt; letter-spacing:5px; ">Romance</font>
                </td>
              </tr>
            </table>
          </p>
        </section>
        <br />
        <hr />
        <footer style="background-color: rgba( 0, 0, 0, 0.2 );">
          <table style="font-family:Palatino Linotype; font-size:9pt;" align="center" width="36%">
            <tr>
              <td rowspan="8" align="center" width="38%">
                <image width="150" src="mainlogo.PNG"></image>
              </td>
              <td style="padding:5px; color:#FFE7D0;">(주)엘엠케이라이브러리</td>
            </tr>
            <tr>
              <td style="padding:5px; color:#FFE7D0;">대표 : 김이주, 문지원, 이서영</td>
            </tr>
            <tr>
              <td style="padding:5px; color:#FFE7D0;">고객정보보호 책임자 : 김이주, 문지원, 이서영</td>
            </tr>
            <tr>
              <td style="padding:5px; color:#FFE7D0;">FAS : 01-2345-6789</td>
            </tr>
            <tr>
              <td style="padding:5px; color:#FFE7D0;">E-mail : privacy@on.co.kr</td>
            </tr>
            <tr>
              <td style="padding:5px; color:#FFE7D0;">사업자등록번호 : 123-45-67890</td>
            </tr>
            <tr>
              <td style="padding:5px; color:#FFE7D0;">통신판매업신고 : 제 1234-56789호</td>
            </tr>
            <tr>
              <td style="padding:5px; color:#FFE7D0;">호스팅 서비스사업자 : 엘엠케이라이브러리(주)</td>
            </tr>
            <tr>
              <td colspan="2" align="center" style="font-size:11pt; letter-spacing:3.5px; color:#FFE7D0;">Copyright ⓒ LMKlibrary Corp. All Rights Reserved.</td>
            </tr>
          </table>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
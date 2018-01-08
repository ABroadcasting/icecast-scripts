<!--
  Russian translation by Aks1d <http://www.aks1d.ru>
  All about Icecast Radiotalk <http://radiotalk.ru>
  All rights reserved.
 -->
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/iceresponse" >
<html>
<head>
<title>Icecast Streaming Media Server</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<img align="left" src="/icecast.png" /><h2><center>Icecast2 Admin</center></h2>
<br />

<div class="roundcont">
	<table border="0" cellpadding="1" cellspacing="3">
	<tr>        
	    <td align="center">
	        <a class="nav" href="stats.xsl">Главная</a>
		    <a class="nav" href="listmounts.xsl">Список каналов</a>
        	<a class="nav" href="moveclients.xsl">Перемещение слушателей</a>
        	<a class="nav" href="/status.xsl">Статус</a>
	    </td></tr>
	</table>
</div>
<br />
<br />

<h1>Ответ сервера Icecast</h1>
<div class="roundcont">
<div class="newscontent">
<h3>Ответ</h3>
<xsl:for-each select="/iceresponse">
Сообшение : <xsl:value-of select="message" /><br></br>
Код: <xsl:value-of select="return" /><br></br>
</xsl:for-each>
<br />
<br />
</div>
</div>
<div class="poster">Поддержка развития: <a class="nav" target="_blank" href="http://icecast.org">www.icecast.org</a></div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

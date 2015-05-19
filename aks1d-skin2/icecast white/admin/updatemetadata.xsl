<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats" >
<html>
<head>
<title>Icecast Streaming Media Server</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<h2>Админцентр</h2>
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

<h1>Обновление метаданных</h1>
<div class="roundcont">
<div class="newscontent">
<xsl:for-each select="source">
<h3>
<xsl:if test="server_name"><xsl:value-of select="server_name" /> </xsl:if>
(<xsl:value-of select="@mount" />)</h3>

<form method="GET" action="/admin/metadata.xsl">
<table border="0" cellpadding="4">
<tr><td>Metadata : <input type="text" name="song"/></td></tr>
<tr><td><input type="Submit" value="Update"/></td></tr>
</table>
<input type="hidden" name="mount" value="{@mount}"/>
<input type="hidden" name="mode" value="updinfo"/>
<input type="hidden" name="charset" value="UTF-8"/>
</form>

<br />
<br />
</xsl:for-each>
<xsl:text disable-output-escaping="yes">&amp;</xsl:text>nbsp;
</div>
</div>
<div class="poster">Поддержка развития: <a class="nav" target="_blank" href="http://www.icecast.org">www.icecast.org</a> Русификация от: <a class="nav" target="_blank" href="http://www.aks1d.ru">Aks1d</a></div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

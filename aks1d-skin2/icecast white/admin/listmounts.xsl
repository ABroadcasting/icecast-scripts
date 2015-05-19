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


<h1>Активные каналы</h1>
<div class="roundcont">
<div class="newscontent">
<xsl:for-each select="source">
<div class="streamheader">
    <table cellspacing="0" cellpadding="0" >
        <colgroup align="left" />
        <colgroup align="right" width="300" />
        <tr>
            <td><h3>Канал <xsl:value-of select="@mount" /></h3></td>
            <xsl:choose>
                <xsl:when test="authenticator">
                    <td align="right"><a class="auth" href="/auth.xsl">Login</a></td>
                </xsl:when>
                <xsl:otherwise>
                    <td align="right">
                        <a href="{@mount}.m3u">M3U</a>
                        <a href="{@mount}.xspf">XSPF</a>
                        <a href="{@mount}.vclt">VCLT</a>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
    </tr></table>
</div>

<table border="0" cellpadding="1" cellspacing="5" bgcolor="666666">
	<tr>        
	    <td align="center">
			<a class="nav2" href="listclients.xsl?mount={@mount}">Список клиентов</a>
        	<a class="nav2" href="moveclients.xsl?mount={@mount}">Перемещение слушателей</a>
			<a class="nav2" href="updatemetadata.xsl?mount={@mount}">Обновление метаданных</a>
        	<a class="nav2" href="killsource.xsl?mount={@mount}">Убить источник</a>
                <xsl:if test="authenticator"><a class="nav2" href="manageauth.xsl?mount={@mount}">Управление аутентификации</a></xsl:if>
	    </td></tr>
	</table>
<br />
<p><xsl:value-of select="listeners" /> Слушатели(ей)</p>
<br></br>
</xsl:for-each>
<xsl:text disable-output-escaping="yes">&amp;</xsl:text>nbsp;
</div>
</div>
<div class="poster">Поддержка развития: <a class="nav" target="_blank" href="http://www.icecast.org">www.icecast.org</a> Русификация от: <a class="nav" target="_blank" href="http://www.aks1d.ru">Aks1d</a></div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

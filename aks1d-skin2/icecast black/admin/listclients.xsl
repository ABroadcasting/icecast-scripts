<!--
  Russian translation by Aks1d <http://www.aks1d.ru>
  All about Icecast Radiotalk <http://radiotalk.ru>
  All rights reserved.
 -->
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats" >
<html>
<head>
<title>Icecast Streaming Media Server</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<h2>Icecast2 Admin</h2>
<br />

<div class="roundcont">
	<table border="0" cellpadding="1" cellspacing="3">
	<tr>        
	    <td align="center">
	        <a class="nav" href="stats.xsl">Admin Home</a>
		    <a class="nav" href="listmounts.xsl">List Mountpoints</a>
        	<a class="nav" href="moveclients.xsl">Move Listeners</a>
        	<a class="nav" href="/status.xsl">Index</a>
	    </td></tr>
	</table>
</div>
<br />
<br />

<h1>Статистика слушателей</h1>
<div class="roundcont">
<div class="newscontent">
<xsl:for-each select="source">
<div class="streamheader">
    <table cellspacing="0" cellpadding="0" >
        <colgroup align="left" />
        <colgroup align="right" width="300" />
        <tr>
            <td><h3>Mount Point <xsl:value-of select="@mount" /></h3></td>
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
<table cellspacing="0" cellpadding="5" border="1" bordercolor="#C0C0C0" >
		<tr>
				<td ><center><b>IP</b></center></td>
				<td ><center><b>Seconds Connected</b></center></td>
				<td ><center><b>User Agent</b></center></td>
				<td ><center><b>Действие</b></center></td>
		</tr>
<xsl:variable name = "themount" ><xsl:value-of select="@mount" /></xsl:variable>
<xsl:for-each select="listener">
		<tr>
				<td align="center"><xsl:value-of select="IP" /><xsl:if test="username"> (<xsl:value-of select="username" />)</xsl:if></td>
				<td align="center"><xsl:value-of select="Connected" /></td>
				<td align="center"><xsl:value-of select="UserAgent" /></td>
				<td align="center"><a href="killclient.xsl?mount={$themount}&amp;id={ID}">Отключить</a></td>
		</tr>
</xsl:for-each>
</table>
<br />
<br />
</xsl:for-each>
<xsl:text disable-output-escaping="yes">&amp;</xsl:text>nbsp;
</div>
</div>
<div class="poster">Поддержка развития: <a class="nav" target="_blank" href="http://icecast.org">www.icecast.org</a></div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

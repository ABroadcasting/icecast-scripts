<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats" >
<html>
<head>
<title>Icecast Streaming Media Server</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<h2>Информация о сервере</h2>
<br />
<!--index header menu -->
<div class="roundcont">
<table border="0" width="100%" id="table1" cellspacing="0" cellpadding="4">
	<tr>
		<td>
		<a class="nav" href="admin/">Админцентр</a>
		<a class="nav" href="status.xsl">Статус сервера</a>
		<a class="nav" href="server_version.xsl">Версия</a></td>
	</tr>
</table>
</div>
<br />
<br />
<!--end index header menu -->

<div class="roundcont">
<div class="newscontent">
<h3>Информация о сервере</h3>
<table border="0" cellpadding="4">
<xsl:for-each select="/icestats">
<tr>
	<td width="130">Расположение:</td>
	<td class="streamdata"><xsl:value-of select="location" /></td>
</tr>
<tr>
	<td width="130">Администратор:</td>
	<td class="streamdata"><xsl:value-of select="admin" /></td>
</tr>
<tr>
    <td width="130">Хостинг:</td>
    <td class="streamdata"><xsl:value-of select="host" /></td>
</tr>
<tr>
    <td width="130">Версия:</td>
    <td class="streamdata"><xsl:value-of select="server_id" /></td>
</tr>
</xsl:for-each>
<tr>
	<td width="130">Скачать:</td>
	<td class="streamdata"><a class="nav" target="_blank" href="http://icecast.org/download.php">Icecast.org</a></td>
</tr>
<tr>
	<td width="130">Русификация:</td>
	<td class="streamdata"><a class="nav" target="_blank" href="http://aks1d.ru">Aks1d.ru</a></td>
</tr>
<tr>
	<td width="130">Всё о IceCast:</td>
	<td class="streamdata"><a class="nav" target="_blank" href="http://radiotalk.ru/">RadioTalk</a></td>
</tr>
<tr>
	<td width="130">Субверсия:</td>
	<td class="streamdata"><a class="nav" target="_blank" href="http://icecast.org/svn.php">перейти</a></td>
</tr>
<tr>
	<td width="130">Документация:</td>
	<td class="streamdata"><a class="nav" target="_blank" href="http://icecast.org/docs.php">перейти</a></td>
</tr>
<tr>
	<td width="130">Все станции:</td>
	<td class="streamdata"><a class="nav" target="_blank" href="http://dir.xiph.org/index.php">dir.xiph.org</a></td>
</tr>
<tr>
	<td width="130">Сообщество</td>
	<td class="streamdata"><a class="nav" target="_blank" href="http://forum.icecast.org/">forum.icecast.org</a></td>
</tr>
</table>
</div>
</div>
<br />
<br />

<div class="poster">Поддержка развития: <a class="nav" target="_blank" href="http://www.icecast.org">www.icecast.org</a> Русификация от: <a class="nav" target="_blank" href="http://www.aks1d.ru">Aks1d</a></div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
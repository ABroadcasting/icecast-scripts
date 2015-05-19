<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output omit-xml-declaration="no" method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8"/>
	<xsl:template match="/icestats">
		<html>
			<head>
				<title>Icecast Streaming Media Server</title>
				<link rel="stylesheet" type="text/css" href="style.css"/>
			</head>
            <body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
			
			<!--index header menu -->
			<div style="position: fixed; top: 0px; left: 0px; width: 100%; z-index: 99999;">
			    <div class="topMenu"><div class="topMenu2"><div class="wrapdiz">
			        <a href="/" class="logotype rad2">Icecast Server</a>
			        <div class="wraphmenu">
			            <a href="admin/" class="hmenu"><span class="h">Админцентр</span></a>
			            <a href="status.xsl" class="hmenu"><span class="h">Статус сервера</span></a>
			            <a href="server_version.xsl" class="hmenu"><span class="h">Версия</span></a>
			            <span class="h"><div id="SwfPlayerv" class="hmenu"></div></span>
				<script type="text/javascript" src="/player/addons1.0.js"></script>
			        </div>
                </div></div></div>
            </div><div class="wraphbody">
            <br/><br/>
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
</div>
				<div class="footerWrap">
					<div class="footbor"><div class="footcont" style="border-top: 1px solid #1a1a1a; padding: 7px 0;"><div class="wrapdiz">
					<div style="float: right; display: block;" id="dasd531">
					<a class="gtop" href="#" onclick="javascript:scroll(0,0)" ><span id="scrlBtn" style="background-image: url(http://usite.su/img/new/tr/arrow_top.png); padding-left: 24px;">Подняться вверх</span></a>
					</div>
					Поддержка развития: <a style="color: #A5A5A5;" target="_blank" href="http://www.icecast.org">www.icecast.org</a> 
					<span style="border-left: 1px solid #252525; border-right: 1px solid #4d4d4d; margin: 0 7px;" class="rad2"></span>
					Русификация от: <a style="color: #A5A5A5;" target="_blank" href="http://www.aks1d.ru">Aks1d</a>
					<span style="border-left: 1px solid #252525; border-right: 1px solid #4d4d4d; margin: 0 7px;" class="rad2"></span>
					</div></div></div>
				</div>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>


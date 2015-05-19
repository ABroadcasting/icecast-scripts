<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats" >
<html>
<head>
<title>Icecast Streaming Media Server</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
</head>
            <body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
			
			<!--index header menu -->
			<div style="position: fixed; top: 0px; left: 0px; width: 100%; z-index: 99999;">
			    <div class="topMenu"><div class="topMenu2"><div class="wrapdiz">
			        <a href="/" class="logotype rad2">Icecast Server</a>
			        <div class="wraphmenu">
			            <a href="stats.xsl" class="hmenu"><span class="h">Админцентр</span></a>
			            <a href="listmounts.xsl" class="hmenu"><span class="h">Список каналов</span></a>
			            <a href="moveclients.xsl" class="hmenu"><span class="h">Перемещение слушателей</span></a>
			            <a href="/status.xsl" class="hmenu"><span class="h">Статус</span></a>
			        </div>
                </div></div></div>
            </div><div class="wraphbody">
            <br/><br/>

<div class="roundcont">
<div class="newscontent">
<xsl:for-each select="iceresponse">
<xsl:value-of select="message" /> 
</xsl:for-each>
<xsl:for-each select="source">
<h3>
<xsl:if test="server_name"><xsl:value-of select="server_name" /> </xsl:if>
(<xsl:value-of select="@mount" />)</h3>
	<table border="0" cellpadding="1" cellspacing="5" bgcolor="666666">
	<tr>        
	    <td align="center">
			<a class="nav2" href="listclients.xsl?mount={@mount}">Список клиентов</a>
        	<a class="nav2" href="moveclients.xsl?mount={@mount}">Перемещение слушателей</a>
			<a class="nav2" href="updatemetadata.xsl?mount={@mount}">Обновление метаданных</a>
        	<a class="nav2" href="killsource.xsl?mount={@mount}">Убить источник</a>
	    </td></tr>
	</table>
<br></br>
<form method="GET" action="manageauth.xsl">
<table cellpadding="2" cellspacing="4" border="0" >
		<tr>
				<td ><b>User Id</b></td>
				<td ></td>
		</tr>
<xsl:variable name = "themount" ><xsl:value-of select="@mount" /></xsl:variable>
<xsl:for-each select="User">
		<tr>
				<td><xsl:value-of select="username" /></td>
				<td><a class="nav2" href="manageauth.xsl?mount={$themount}&amp;username={username}&amp;action=delete">delete</a></td>
		</tr>
</xsl:for-each>
</table>
<table cellpadding="2" cellspacing="4" border="0" >
		<tr>
				<td ><b>Идентификатор пользователя</b></td>
				<td ><b>Пароль</b></td>
		</tr>
		<tr>
				<td ><input type="text" name="username" /></td>
				<td ><input type="text" name="password" /></td>
		</tr>
		<tr>
				<td colspan="2"><input type="Submit" name="Submit" value="Add New User" /></td>
		</tr>
</table>
<input type="hidden" name="mount" value="{@mount}"/>
<input type="hidden" name="action" value="add"/>
</form>
<br />
<br />
</xsl:for-each>
<xsl:text disable-output-escaping="yes">&amp;</xsl:text>nbsp;
</div>
</div><br /></div>

				<div class="footerWrap">
					<div class="footbor"><div class="footcont" style="border-top: 1px solid #1a1a1a; padding: 7px 0;"><div class="wrapdiz">
					<div style="float: right; display: block;" id="dasd531">
					<a class="gtop" href="#" onclick="javascript:scroll(0,0)" ><span id="scrlBtn" style="background-image: url(/arrow_top.png); padding-left: 24px;">Подняться вверх</span></a>
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

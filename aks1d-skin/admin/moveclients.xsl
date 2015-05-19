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
<xsl:variable name = "currentmount" ><xsl:value-of select="current_source" /></xsl:variable>
<div class="roundcont">
<div class="newscontent">
<h3>Переход к точке монтирования?</h3>
<xsl:for-each select="source">
	<table border="0" cellpadding="1" cellspacing="5" >
	<tr>        
		<td>Переход от (<xsl:copy-of select="$currentmount" />) to (<xsl:value-of select="@mount" />)</td>
		<td><xsl:value-of select="listeners" /> Слушатели</td>
		<td><a class="nav2" href="moveclients.xsl?mount={$currentmount}&amp;destination={@mount}">Перемещение клиентов</a></td>
	</tr>        
	</table>
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

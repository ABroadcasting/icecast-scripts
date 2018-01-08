<!--
  Russian translation by Aks1d <http://www.aks1d.ru>
  All about Icecast Radiotalk <http://radiotalk.ru>
  All rights reserved.
 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output omit-xml-declaration="no" method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8"/>
	<xsl:template match="/icestats">
		<html>
			<head>
				<title>Icecast Streaming Media Server</title>
				<link rel="stylesheet" type="text/css" href="style.css"/>
				<script src="https://www.google.com/jsapi" />
				<script>google.load('visualization', '1', {packages: ['gauge']});
					function drawVisualization() {
					var data = new google.visualization.DataTable();
					data.addColumn('string', 'Label');
					data.addColumn('number', 'Value');
					data.addRows([
					['TOTAL', <xsl:value-of select="listeners" />],<xsl:for-each select="source">
						['<xsl:value-of select="@mount" />', <xsl:value-of select="listeners" />]<xsl:if test="position() != last()"><xsl:text>,</xsl:text></xsl:if></xsl:for-each>
					]);
					var gaugeOptions = {min: 0, max: 300, greenFrom: 0, greenTo: 200, yellowFrom: 200, yellowTo: 280, redFrom: 280, redTo: 300, minorTicks: 5};
					new google.visualization.Gauge(document.getElementById('visualization')).
					draw(data, gaugeOptions);
					}
					google.setOnLoadCallback(drawVisualization);</script>
			</head>
            <body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
				<div id="visualization" style="width:400px; height:120px; float:right; z-index:2;" />
			<!--index header menu -->
			<div style="position: fixed; top: 0px; left: 0px; width: 100%; z-index: 99999;">
			    <div class="topMenu"><div class="topMenu2"><div class="wrapdiz">
			        <a href="/" class="logotype rad2">Icecast Server</a>
			        <div class="wraphmenu">
			            <a href="admin/" class="hmenu"><span class="h">Админцентр</span></a>
			            <a href="status.xsl" class="hmenu"><span class="h">Статус сервера</span></a>
			            <a href="server_version.xsl" class="hmenu"><span class="h">Версия</span></a>
			        </div>
                </div></div></div>
            </div><div class="wraphbody">
            <br/><br/>
				<!--end index header menu -->
				<!--mount point stats-->
				<xsl:for-each select="source">
					<xsl:choose>
						<xsl:when test="listeners">
							<div class="roundcont">
								<div class="newscontent">
									<div class="streamheader">
										<table cellspacing="0" cellpadding="0">
											<colgroup align="left"/>
											<colgroup align="right" width="300"/>
											<tr>
												<td>
													<h3 >Канал <a href="status.xsl?mount={@mount}"><xsl:value-of select="@mount"/></a>
													</h3>
												</td>
												<xsl:choose>
													<xsl:when test="authenticator">
														<td align="right">
															<a class="auth" href="/auth.xsl">Login</a>
														</td>
													</xsl:when>
													<xsl:otherwise>
														<td align="right">
															<a href="{@mount}.m3u">M3U</a>
															<a href="{@mount}.xspf">XSPF</a>
															<!-- <a href="{@mount}.vclt">VCLT</a> -->
														</td>
													</xsl:otherwise>
												</xsl:choose>
											</tr>
										</table>
									</div>
									<table border="0" cellpadding="4">
										<xsl:if test="server_name">
											<tr>
												<td>Заголовок:</td>
												<td class="streamdata">
													<xsl:value-of select="server_name"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="server_description">
											<tr>
												<td>Описание:</td>
												<td class="streamdata">
													<xsl:value-of select="server_description"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="server_type">
											<tr>
												<td>MIME:</td>
												<td class="streamdata">
													<xsl:value-of select="server_type"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="stream_start">
											<tr>
												<td>Запущен:</td>
												<td class="streamdata">
													<xsl:value-of select="stream_start"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="bitrate">
											<tr>
												<td>Качество:</td>
												<td class="streamdata">
													<xsl:value-of select="bitrate"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="quality">
											<tr>
												<td>Quality:</td>
												<td class="streamdata">
													<xsl:value-of select="quality"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="video_quality">
											<tr>
												<td>Video Quality:</td>
												<td class="streamdata">
													<xsl:value-of select="video_quality"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="frame_size">
											<tr>
												<td>Framesize:</td>
												<td class="streamdata">
													<xsl:value-of select="frame_size"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="frame_rate">
											<tr>
												<td>Framerate:</td>
												<td class="streamdata">
													<xsl:value-of select="frame_rate"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="listeners">
											<tr>
												<td>Слушателей на канале:</td>
												<td class="streamdata">
													<xsl:value-of select="listeners"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="listener_peak">
											<tr>
												<td>Рекорд слушателей:</td>
												<td class="streamdata">
													<xsl:value-of select="listener_peak"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="genre">
											<tr>
												<td>Жанр:</td>
												<td class="streamdata">
													<xsl:value-of select="genre"/>
												</td>
											</tr>
										</xsl:if>
										<xsl:if test="server_url">
											<tr>
												<td>URL:</td>
												<td class="streamdata">
													<a target="_blank" href="{server_url}">
														<xsl:value-of select="server_url"/>
													</a>
												</td>
											</tr>
										</xsl:if>
										<tr>
											<td>Сейчас играет:</td>
											<td class="streamdata">
												<xsl:if test="artist">
												<xsl:value-of select="artist"/> - </xsl:if><xsl:value-of select="title"/>
											</td>
										</tr>										
										<tr>
											<td>Скачать или прослушать:</td>
											<td class="streamdata">
											<a target="_blank" href="http://vk.com/audio?q={title}">Слушать с VK.com</a>
											<span style="padding:0px 10px;">или</span>
											<a target="_blank" href="http://muzebra.com/search/?q={title}">Скачать с Muzebra.com</a>
											<span style="padding:0px 10px;">или</span>
											<a target="_blank" href="http://www.audiopoisk.com/?q={title}">Скачать с Audiopoisk.com</a>
											</td>
										</tr>								
									</table>
								</div>
							</div>
							<br/>
						</xsl:when>
						<xsl:otherwise>
							<h3>
								<xsl:value-of select="@mount"/> - Not Connected</h3>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				
</div>

				<div class="footerWrap">
					<div class="footbor"><div class="footcont" style="border-top: 1px solid #1a1a1a; padding: 7px 0;"><div class="wrapdiz">
					<div style="float: right; display: block;" id="dasd531">
					<a class="gtop" href="#" onclick="javascript:scroll(0,0)" ><span id="scrlBtn" style="background-image: url(/arrow_top.png); padding-left: 24px;">Подняться вверх</span></a>
					</div>
					Поддержка развития: <a style="color: #A5A5A5;" target="_blank" href="http://icecast.org">www.icecast.org</a>
					</div></div></div>
				</div>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

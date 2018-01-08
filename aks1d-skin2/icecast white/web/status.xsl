<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats" >
<html>
<head>
<title>Icecast Streaming Media Server</title>
<link rel="stylesheet" type="text/css" href="style.css" />
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
<h2>Статус сервера</h2>
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
<!--mount point stats-->
<xsl:for-each select="source">
<xsl:choose>
<xsl:when test="listeners">
<div class="roundcont">
<div class="newscontent">
    <div class="streamheader">
        <table cellspacing="0" cellpadding="0">
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
                            <!-- <a href="{@mount}.vclt">VCLT</a> -->
                        </td>
                    </xsl:otherwise>
                </xsl:choose>
        </tr></table>
    </div>

<table border="0" cellpadding="4">
<xsl:if test="server_name">
<tr><td>Заголовок:</td><td class="streamdata"> <xsl:value-of select="server_name" /></td></tr>
</xsl:if>
<xsl:if test="server_description">
<tr><td>Описание:</td><td class="streamdata"> <xsl:value-of select="server_description" /></td></tr>
</xsl:if>
<xsl:if test="server_type">
<tr><td>MIME:</td><td class="streamdata"><xsl:value-of select="server_type" /></td></tr>
</xsl:if>
<xsl:if test="stream_start">
<tr><td>Запущен:</td><td class="streamdata"><xsl:value-of select="stream_start" /></td></tr>
</xsl:if>
<xsl:if test="bitrate">
<tr><td>Качество:</td><td class="streamdata"> <xsl:value-of select="bitrate" /></td></tr>
</xsl:if>
<xsl:if test="quality">
<tr><td>Quality:</td><td class="streamdata"> <xsl:value-of select="quality" /></td></tr>
</xsl:if>
<xsl:if test="video_quality">
<tr><td>Video Quality:</td><td class="streamdata"> <xsl:value-of select="video_quality" /></td></tr>
</xsl:if>
<xsl:if test="frame_size">
<tr><td>Framesize:</td><td class="streamdata"> <xsl:value-of select="frame_size" /></td></tr>
</xsl:if>
<xsl:if test="frame_rate">
<tr><td>Framerate:</td><td class="streamdata"> <xsl:value-of select="frame_rate" /></td></tr>
</xsl:if>
<xsl:if test="listeners">
<tr><td>Слушателей на канале:</td><td class="streamdata"> <xsl:value-of select="listeners" /></td></tr>
</xsl:if>
<xsl:if test="listener_peak">
<tr><td>Рекорд слушателей:</td><td class="streamdata"> <xsl:value-of select="listener_peak" /></td></tr>
</xsl:if>
<xsl:if test="genre">
<tr><td>Жанр:</td><td class="streamdata"> <xsl:value-of select="genre" /></td></tr>
</xsl:if>
<xsl:if test="server_url">
<tr><td>URL:</td><td class="streamdata"> <a target="_blank" href="{server_url}"><xsl:value-of select="server_url" /></a></td></tr>
</xsl:if>
<tr><td>Сейчас играет:</td><td class="streamdata"> 
<xsl:if test="artist"><xsl:value-of select="artist" /> - </xsl:if><xsl:value-of select="title" /></td></tr>
</table>
</div>
</div>
<br />
<br />
</xsl:when>
<xsl:otherwise>
<h3><xsl:value-of select="@mount" /> - Not Connected</h3>
</xsl:otherwise>
</xsl:choose>

</xsl:for-each>
<xsl:text disable-output-escaping="yes">&amp;</xsl:text>nbsp;


<div class="poster">Поддержка развития: <a class="nav" target="_blank" href="http://www.icecast.org">www.icecast.org</a> Русификация от: <a class="nav" target="_blank" href="http://www.aks1d.ru">Aks1d</a></div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

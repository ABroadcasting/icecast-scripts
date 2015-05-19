<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats" >
<html>
<head>
<title>Icecast Streaming Media Server</title>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">

<!--mount point stats-->
<xsl:for-each select="source">
<xsl:choose>
<xsl:when test="listeners">
<h3>
<a href="{@mount}.m3u">Click to Listen</a>
</h3>

<table border="0" cellpadding="4">
<xsl:if test="listeners">
<tr><td>Current Listeners:</td><td> <xsl:value-of select="listeners" /></td></tr>
</xsl:if>
<tr><td>Current Song:</td><td> 
<xsl:if test="artist"><xsl:value-of select="artist" /> - </xsl:if><xsl:value-of select="title" /></td></tr>
</table>
</xsl:when>
</xsl:choose>

</xsl:for-each>
<xsl:text disable-output-escaping="yes">&amp;</xsl:text>nbsp;

</body>
</html>
</xsl:template>
</xsl:stylesheet>

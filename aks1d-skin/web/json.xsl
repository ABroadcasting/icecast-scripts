<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="yes" method="text" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="no" encoding="UTF-8" /><xsl:strip-space elements="*"/>
<xsl:template match = "/icestats" ><!-- <xsl:param name="callback" /> media-type="text/x-json" --><!-- <xsl:value-of select="$callback" /> -->
STATS ( { <xsl:for-each select="source">"<xsl:value-of select="@mount" />" :
      {
      "name" : "<xsl:value-of select="server_name"/>",
      "listeners" : "<xsl:value-of select="listeners" />",
      "description" : "<xsl:value-of select="server_description" />",
      <xsl:if test="artist">"artist" : "<xsl:value-of select="artist" />",</xsl:if>
      "title" : "<xsl:value-of select="title" />",
      "genre" : "<xsl:value-of select="genre" />",
      "url" : "<xsl:value-of select="server_url" />"
      },
    </xsl:for-each>
    } );
  </xsl:template>
</xsl:stylesheet>
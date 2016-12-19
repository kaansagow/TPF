<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="menus">
    <menus>
      <xsl:for-each select="item">
        <xsl:sort select="id" data-type="number"/>
        <item>
          <xsl:attribute name="menu">
            <xsl:value-of select="menu"/>
          </xsl:attribute>
          <xsl:attribute name="nome">
            <xsl:value-of select="nome"/>
          </xsl:attribute>
          <xsl:attribute name="price">
            <xsl:value-of select="price"/>
          </xsl:attribute>
        </item>
      </xsl:for-each>
    </menus>
  </xsl:template>
</xsl:stylesheet>

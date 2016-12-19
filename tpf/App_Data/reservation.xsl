<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="reservas">
    <reservas>
      <xsl:for-each select="item">
        <xsl:sort select="id" data-type="number"/>
        <item>
          <xsl:attribute name="id">
            <xsl:value-of select="id"/>
          </xsl:attribute>
          <xsl:attribute name="reserva">
            <xsl:value-of select="reserva"/>
          </xsl:attribute>
          <xsl:attribute name="telefone">
            <xsl:value-of select="telefone"/>
          </xsl:attribute>
          <xsl:attribute name="email">
            <xsl:value-of select="email"/>
          </xsl:attribute>
          <xsl:attribute name="data">
            <xsl:value-of select="data"/>
          </xsl:attribute>
          <xsl:attribute name="pessoas">
            <xsl:value-of select="pessoas"/>
          </xsl:attribute>
        </item>
      </xsl:for-each>
    </reservas>
  </xsl:template>
</xsl:stylesheet>


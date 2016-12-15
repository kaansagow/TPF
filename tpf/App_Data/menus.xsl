<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="menus">
    <menus>
        <menu>
          <entradas>
            <xsl:for-each select="entrada">
              <xsl:sort select="id" data-type="number"/>
              <entrada>
                <xsl:attribute name="nome">
                  <xsl:value-of select="nome"/>
                </xsl:attribute>
                <xsl:attribute name="price">
                  <xsl:value-of select="price"/>
                </xsl:attribute>
               </entrada>
             </xsl:for-each>
          </entradas>
          <xsl:for-each select="sopa">
            <xsl:sort select="id" data-type="number"/>
            <sopa>
              <xsl:attribute name="nome">
                <xsl:value-of select="nome"/>
              </xsl:attribute>
              <xsl:attribute name="price">
                <xsl:value-of select="price"/>
              </xsl:attribute>
            </sopa>
          </xsl:for-each>
          <pratos>
            <carnes>
              <xsl:for-each select="carne">
                <xsl:sort select="id" data-type="number"/>
                <carne>
                  <xsl:attribute name="nome">
                    <xsl:value-of select="nome"/>
                  </xsl:attribute>
                  <xsl:attribute name="price">
                    <xsl:value-of select="price"/>
                  </xsl:attribute>
                </carne>
              </xsl:for-each>
            </carnes>
            <peixes>
              <xsl:for-each select="peixe">
                <xsl:sort select="id" data-type="number"/>
                <peixe>
                  <xsl:attribute name="nome">
                    <xsl:value-of select="nome"/>
                  </xsl:attribute>
                  <xsl:attribute name="price">
                    <xsl:value-of select="price"/>
                  </xsl:attribute>
                </peixe>
              </xsl:for-each>
            </peixes>
            <veges>
              <xsl:for-each select="vege">
                <xsl:sort select="id" data-type="number"/>
                <veges>
                  <xsl:attribute name="nome">
                    <xsl:value-of select="nome"/>
                  </xsl:attribute>
                  <xsl:attribute name="price">
                    <xsl:value-of select="price"/>
                  </xsl:attribute>
                </veges>
              </xsl:for-each>
            </veges>
          </pratos>
          <sobremesas>
            <xsl:for-each select="sobremesa">
              <xsl:sort select="id" data-type="number"/>
              <sobremesa>
                <xsl:attribute name="nome">
                  <xsl:value-of select="nome"/>
                </xsl:attribute>
                <xsl:attribute name="price">
                  <xsl:value-of select="price"/>
                </xsl:attribute>
              </sobremesa>
            </xsl:for-each>
          </sobremesas>
        </menu>
    </menus>
  </xsl:template>
</xsl:stylesheet>

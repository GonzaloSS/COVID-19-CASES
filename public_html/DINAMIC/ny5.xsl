<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

  <h2>Museum and Galleries search</h2>
  
  <table class="table table-dark table-hover" border="1">
  
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Specials</th>
    </tr>
    <xsl:for-each select="museums/museum">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="specials"/></td>
    </tr>
    </xsl:for-each>
  </table>
</xsl:template>
</xsl:stylesheet>
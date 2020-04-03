<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : covid19.xsl
    Created on : 3 de abril de 2020, 0:43
    Author     : Gonzalo
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <records>
            <xsl:for-each select="/records/record">
                <record>
                    <dateRep><xsl:value-of select="dateRep"/></dateRep>
                    <day><xsl:value-of select="day"/></day>
                    <month><xsl:value-of select="month"/></month>
                    <year><xsl:value-of select="year"/></year>
                    <cases><xsl:value-of select="cases"/></cases>
                    <deaths><xsl:value-of select="deaths"/></deaths>
                    <countriesAndTerritories><xsl:value-of select="countriesAndTerritories"/></countriesAndTerritories>
                    <geoId><xsl:value-of select="geoId"/></geoId>
                    <countryterritoryCode><xsl:value-of select="countryterritoryCode"/></countryterritoryCode>
                    <popData2018><xsl:value-of select="popData2018"/></popData2018>
                </record>
            </xsl:for-each>
        </records>
    </xsl:template>

</xsl:stylesheet>

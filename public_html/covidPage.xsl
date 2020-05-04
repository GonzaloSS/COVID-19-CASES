<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : covidPage.xsl
    Created on : 27 de abril de 2020, 17:10
    Author     : lolgo
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
              
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></link>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script> 
                <link rel="stylesheet" href="css/styles.css"></link>
                <title>COVID19 INDICATORS</title>
            </head>
           <body>
                <h2>My covid case table</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>CountriesAndTerritories</th>
                        <th>Cases</th>
                        <th>Deaths</th>
                        <th>Date</th>
                        <th>Day</th>
                        <th>Month</th>
                        <th>Year</th>
                        <th>geoId</th>
                        <th>Code</th>
                        <th>PopData2018</th>
                    </tr>
                    <xsl:for-each select="records/record">
                        <tr>
                            <td>
                                <xsl:value-of select="countriesAndTerritories"/>
                            </td>
                            <td>
                                <xsl:value-of select="cases"/>
                            </td>
                            <td>
                                <xsl:value-of select="deaths"/>
                            </td>
                            <td>
                                <xsl:value-of select="dateRep"/>
                            </td>
                            <td>
                                <xsl:value-of select="day"/>
                            </td>
                            <td>
                                <xsl:value-of select="month"/>
                            </td>
                            <td>
                                <xsl:value-of select="year"/>
                            </td>
                            <td>
                                <xsl:value-of select="geoId"/>
                            </td>
                            <td>
                                <xsl:value-of select="countryterritoryCode"/>
                            </td>
                            <td>
                                <xsl:value-of select="popData2018"/>
                            </td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

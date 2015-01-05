<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <body>
                <h2>СОРТИРОВКА:</h2>
                <ul>
                    <xsl:apply-templates select="/pricelist/book">
                        <xsl:sort select="price" data-type="number" />
                    </xsl:apply-templates>
                </ul>

                <h2>УСЛОВИЕ(CASE):</h2>
                <ul>
                    <xsl:for-each select="/pricelist/book">
                        <li>
                            <xsl:choose>
                                <xsl:when test="@color='красный'">
                                    <xsl:attribute name="style">
                                        background-color:#fcc;
                                    </xsl:attribute>
                                </xsl:when>
                                <xsl:when test="@color='синий'">
                                    <xsl:attribute name="style">
                                        background-color:#ccf;
                                    </xsl:attribute>
                                </xsl:when>
                                <xsl:when test="@color='желтый'">
                                    <xsl:attribute name="style">
                                        background-color:#ffc;
                                    </xsl:attribute>
                                </xsl:when>
                            </xsl:choose>
                            <xsl:value-of select=" title" />
                        </li>
                    </xsl:for-each>
                </ul>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="book">
        <li>
            <xsl:for-each select="*">
                <xsl:value-of select="name()" />
                <xsl:text>: </xsl:text>
                <xsl:value-of select="." />
                <br />
            </xsl:for-each>
        </li>
    </xsl:template>

</xsl:stylesheet>
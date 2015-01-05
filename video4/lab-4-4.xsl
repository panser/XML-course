<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <body>
                <h1>
                    Книжок дороже 150 грн
                    <xsl:value-of select="count(/pricelist/book[price &gt; 150])"/>
                    штук
                </h1>
                <hr />
                <ul>
                    <xsl:apply-templates select="/pricelist/book[price &gt; 150]" />
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
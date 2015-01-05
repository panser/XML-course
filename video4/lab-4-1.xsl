<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <body>
                <strong>
                    <xsl:call-template name="header"/>
                </strong>
                <xsl:apply-templates select="/pricelist/book" />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="book[price &gt; 150]">
        <div style="color:red">
            <xsl:value-of select="title" />
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="price" />
            <xsl:comment>Ребята, здесь НЕРАЗРЫВНЫЙ ПРОБЕЛ!!! (Alt - 0160)</xsl:comment>
            <xsl:text> грв</xsl:text>
        </div>
    </xsl:template>

    <xsl:template match="book">
        <div>
            <a href="{@url}">
                <xsl:value-of select="title" />
            </a>
        </div>
    </xsl:template>

    <xsl:template name="header">
        <div>Title of Books</div>
    </xsl:template>
</xsl:stylesheet>
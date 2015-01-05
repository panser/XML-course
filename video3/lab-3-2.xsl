<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <xsl:value-of select="/pricelist/book[price &gt; 150]" />
    </xsl:template>

<!--
    <xsl:template match="book">
        Ура!!!
    </xsl:template>
-->

    <!--
        <xsl:template match="*|@*">
            ГЫ
        </xsl:template>
    -->

</xsl:stylesheet>
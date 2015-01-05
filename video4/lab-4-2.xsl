<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xhtml="http://www.w3.org/1999/xhtml">

    <xsl:output method="xml" />

    <xsl:template match="/">
        <result>
            <xsl:apply-templates select="//xhtml:a" />
        </result>
    </xsl:template>

    <xsl:template match="xhtml:a">
        <xsl:copy-of select="." />
    </xsl:template>

</xsl:stylesheet>
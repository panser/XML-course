<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output
            method="xml"
            encoding="UTF-8"
            doctype-public="-//W3C//DTD HTML 4.01//EN"
            doctype-system="http://www.x3.org/TR/html4/strict.dtd"
            indent="yes"
            cdata-section-elements="ul"
            />

    <xsl:key name="mykey" match="/pricelist/book" use="price" />
    <xsl:key name="keyTitleAuthor" match="/pricelist/book" use="concat(title,':', author)" />

    <xsl:template match="/">
        <html>
            <body>
                <h1>
                    Книжок за 150 грн
                    <xsl:value-of select="count(key('mykey', 150))"/>
                    штук
                </h1>
                <hr />
                <ul>
                    <xsl:apply-templates select="key('mykey', 150)" />
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
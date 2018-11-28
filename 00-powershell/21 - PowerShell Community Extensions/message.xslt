<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:test="http://www.test.com">
<xsl:template match="/">
  <html>
    <head>
        <title>Illegal elements</title>
    </head>
  <body>
    <xsl:for-each select="//test:illegal">
        <p style="color: red">    
            <xsl:value-of select="."/>
        </p>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
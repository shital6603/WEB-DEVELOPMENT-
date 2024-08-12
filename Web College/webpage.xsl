<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <body>
            <h1>Student</h1>
            <table border="1">
                <tr bgcolor="yellow">
                    <th>Roll No</th>
                    <th>First-Name</th>
                    <th>Last Name</th>
                    <th>Marks</th>
                </tr>
                <xsl:for-each select="class/student">
                    <tr>
                        <td><xsl:value-of select="rno"/></td>
                        <td><xsl:value-of select="firstname"/></td>
                        <td><xsl:value-of select="lastname"/></td>
                        <td><xsl:value-of select="marks"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
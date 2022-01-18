
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes" />
  <xsl:template match="/">
    <html>
    <head>
    <meta charset="UTF-8" />
    <title>XML Data Imported</title>
    <style>
		table {
			border-collapse: collapse;
		}
		td {
			width: 200px;
			border-bottom: 1px solid #000;
			padding: 5px;
			margin: 0;
		}
		tr:nth-child(even) {
			background-color: #FFFF66;	
		}
		th {
			text-align: left;
		}
	</style>
    </head>
    <body>
    <h1>XML Data Imported and Transformed by XSLT</h1>
<table id="sales">
  <tr>
    <th>Territory</th>
    <th>Employees</th>
    <th>Sales</th>
  </tr>
  <xsl:for-each select="sales/region">
  <tr>
    <td><xsl:value-of select="territory"/></td>
    <td><xsl:value-of select="employees"/></td>
    <td>$<xsl:value-of select="amount"/></td>
  </tr>
  </xsl:for-each>
</table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

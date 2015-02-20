<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" doctype-system="about:legacy-compat"
		omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
	<xsl:template match="Page">
		<html>
			<head>
				<title>
					<xsl:value-of select="@id" />
				</title>
				<link rel="stylesheet" href="../css/PageMain.css" />
			</head>
			<body>
				<xsl:apply-templates select="*" />
				<xsl:apply-templates
					select="document(concat('../templates/', @template, '.xml'))" />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="PageTemplate">
		<xsl:apply-templates select="*" />
	</xsl:template>

	<xsl:template match="Section">
		<xsl:apply-templates select="document(concat('../sections/', @id, '.xml'))" />
	</xsl:template>

	<xsl:template match="SectionDefinition">
		<xsl:apply-templates select="*" />
	</xsl:template>

	<xsl:template match="Component">
		<xsl:apply-templates select="document(concat('../components/', @id, '.xml'))" />
	</xsl:template>

	<xsl:template match="ComponentDefinition">
		<xsl:apply-templates select="*" />
	</xsl:template>

	<xsl:template match="*">
		<xsl:copy>
			<xsl:copy-of select="@*" />
			<xsl:apply-templates select="*" />
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
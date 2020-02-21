<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	
	<!-- This is an identity transform -->
	<xsl:template match="node() | @*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>
	
	<!-- Transform from here -->
	
	<!-- This selects the 2nd contact element and outputs only two of it's sub elements -->
	<xsl:template match="//contact[1]">
		<firstName><xsl:value-of select="firstName"/></firstName>
		<lastName><xsl:value-of select="lastName"/></lastName>
	</xsl:template>
	
	<!-- Omit any contact without type != purchaser -->
	<xsl:template match="//contact[not(type ='purchaser')]"/>
	
	

</xsl:stylesheet>

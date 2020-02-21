<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	
	
	<xsl:template match="node()|@*">	
	  <xsl:copy>
	   <xsl:apply-templates select="node()|@*"/>
	  </xsl:copy>  	  
	 </xsl:template>
	 
	 <xsl:template match="contact">
		  <xsl:copy>
			   <!--<xsl:value-of select="contact|@*"/>-->
			   <!--<xsl:apply-templates select="node()|@*"/>-->
			   <xsl:apply-templates select="//FormsGeneration/contact[type='purchaser']"/>
		  </xsl:copy>
	 </xsl:template>
	 
	 <xsl:template match="contact/node()"/>
	
</xsl:stylesheet>
